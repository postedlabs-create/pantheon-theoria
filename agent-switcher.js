(function() {
  var AGENTS = [
    { id: 'arbiter', name: 'Arbiter', emoji: '\u2696\uFE0F' },
    { id: 'athena', name: 'Athena', emoji: '\uD83E\uDD89' },
    { id: 'hermes', name: 'Hermes', emoji: '\uD83D\uDD27' },
    { id: 'argus', name: 'Argus', emoji: '\uD83D\uDC41\uFE0F' },
    { id: 'calliope', name: 'Calliope', emoji: '\uD83C\uDF99\uFE0F' },
  ];

  function getSessionKey(agentId) {
    return 'agent:' + agentId + ':main';
  }

  function getCurrentAgentId() {
    var url = new URL(window.location.href);
    var session = url.searchParams.get('session');
    if (session && session.startsWith('agent:')) {
      return session.split(':')[1];
    }
    try {
      var stored = JSON.parse(localStorage.getItem('openclaw.control.settings.v1') || '{}');
      var sk = stored.sessionKey || '';
      if (sk.startsWith('agent:')) return sk.split(':')[1];
    } catch(e) {}
    return null;
  }

  function switchToAgent(agentId) {
    var sessionKey = getSessionKey(agentId);
    try {
      var stored = JSON.parse(localStorage.getItem('openclaw.control.settings.v1') || '{}');
      stored.sessionKey = sessionKey;
      stored.lastActiveSessionKey = sessionKey;
      localStorage.setItem('openclaw.control.settings.v1', JSON.stringify(stored));
    } catch(e) {}
    var url = new URL(window.location.href);
    url.searchParams.set('session', sessionKey);
    if (!url.pathname.endsWith('/chat')) {
      var base = url.pathname.replace(/\/[^/]*$/, '');
      url.pathname = base + '/chat';
    }
    window.location.href = url.toString();
  }

  function injectSwitcher() {
    if (document.getElementById('agent-switcher-sidebar')) return;

    var currentId = getCurrentAgentId();

    // Find the Chat nav link (the highlighted red one) — we want to replace it with our agent list
    var chatLink = document.querySelector('a[href*="/chat"]');
    if (!chatLink) return; // sidebar not loaded yet

    // Build agent buttons
    var container = document.createElement('div');
    container.id = 'agent-switcher-sidebar';
    container.style.cssText = 'display:flex;flex-direction:column;gap:1px;padding:0;';

    AGENTS.forEach(function(agent) {
      var btn = document.createElement('a');
      var isActive = agent.id === currentId;
      btn.href = '#';
      btn.textContent = agent.emoji + '  ' + agent.name;
      btn.title = 'Switch to ' + agent.name;
      btn.style.cssText = [
        'cursor:pointer',
        'padding:6px 12px 6px 16px',
        'border-radius:6px',
        'margin:0 4px',
        'font-size:13px',
        'font-family:system-ui,sans-serif',
        'white-space:nowrap',
        'transition:all 0.15s',
        'text-decoration:none',
        'display:block',
        'color:' + (isActive ? '#c7d2fe' : 'rgba(255,255,255,0.7)'),
        'background:' + (isActive ? 'rgba(99,102,241,0.2)' : 'transparent'),
        'font-weight:' + (isActive ? '600' : '400'),
      ].join(';') + ';';

      btn.addEventListener('mouseenter', function() {
        if (!isActive) {
          btn.style.background = 'rgba(99,102,241,0.1)';
          btn.style.color = '#c7d2fe';
        }
      });
      btn.addEventListener('mouseleave', function() {
        if (!isActive) {
          btn.style.background = 'transparent';
          btn.style.color = 'rgba(255,255,255,0.7)';
        }
      });
      btn.addEventListener('click', function(e) {
        e.preventDefault();
        switchToAgent(agent.id);
      });
      container.appendChild(btn);
    });

    // Replace the Chat link with our agent list
    // The Chat link sits inside the Chat section — insert our list after it, then hide it
    chatLink.parentNode.insertBefore(container, chatLink.nextSibling);
    chatLink.style.display = 'none';
  }

  // Run with retries since the sidebar may load async
  function tryInject(attempts) {
    if (attempts <= 0) return;
    injectSwitcher();
    if (!document.getElementById('agent-switcher-sidebar')) {
      setTimeout(function() { tryInject(attempts - 1); }, 500);
    }
  }

  if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', function() { setTimeout(function() { tryInject(10); }, 500); });
  } else {
    setTimeout(function() { tryInject(10); }, 500);
  }

  // Re-inject on SPA navigation
  var _pushState = history.pushState;
  history.pushState = function() {
    _pushState.apply(this, arguments);
    setTimeout(function() { tryInject(5); }, 300);
  };
  window.addEventListener('popstate', function() {
    setTimeout(function() { tryInject(5); }, 300);
  });
})();
