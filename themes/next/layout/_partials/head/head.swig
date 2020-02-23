<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=2">
<meta name="theme-color" content="{{ theme.android_chrome_color }}">
<meta name="generator" content="Hexo {{ hexo_version }}">

{%- if theme.favicon.apple_touch_icon %}
  <link rel="apple-touch-icon" sizes="180x180" href="{{ url_for(theme.favicon.apple_touch_icon) }}">
{%- endif %}
{%- if theme.favicon.medium %}
  <link rel="icon" type="image/png" sizes="32x32" href="{{ url_for(theme.favicon.medium) }}">
{%- endif %}
{%- if theme.favicon.small %}
  <link rel="icon" type="image/png" sizes="16x16" href="{{ url_for(theme.favicon.small) }}">
{%- endif %}
{%- if theme.favicon.safari_pinned_tab %}
  <link rel="mask-icon" href="{{ url_for(theme.favicon.safari_pinned_tab) }}" color="{{ theme.android_chrome_color }}">
{%- endif %}
{%- if theme.favicon.android_manifest %}
  <link rel="manifest" href="{{ url_for(theme.favicon.android_manifest) }}">
{%- endif %}
{%- if theme.favicon.ms_browserconfig %}
  <meta name="msapplication-config" content="{{ url_for(theme.favicon.ms_browserconfig) }}">
{%- endif %}

{%- if theme.disable_baidu_transformation %}
  <meta http-equiv="Cache-Control" content="no-transform">
  <meta http-equiv="Cache-Control" content="no-siteapp">
{%- endif %}
{%- if theme.google_site_verification %}
  <meta name="google-site-verification" content="{{ theme.google_site_verification }}">
{%- endif %}
{%- if theme.bing_site_verification %}
  <meta name="msvalidate.01" content="{{ theme.bing_site_verification }}">
{%- endif %}
{%- if theme.yandex_site_verification %}
  <meta name="yandex-verification" content="{{ theme.yandex_site_verification }}">
{%- endif %}
{%- if theme.baidu_site_verification %}
  <meta name="baidu-site-verification" content="{{ theme.baidu_site_verification }}">
{%- endif %}

<link rel="stylesheet" href="{{ url_for(theme.css) }}/main.css">

{{ next_font() }}

{%- set font_awesome_uri = theme.vendors.fontawesome or next_vendors('font-awesome/css/font-awesome.min.css') %}
<link rel="stylesheet" href="{{ font_awesome_uri }}">

{%- if theme.fancybox %}
  {%- set fancybox_css_uri = theme.vendors.fancybox_css or next_vendors('//cdn.jsdelivr.net/gh/fancyapps/fancybox@3/dist/jquery.fancybox.min.css') %}
  <link rel="stylesheet" href="{{ fancybox_css_uri }}">
{%- endif %}

{%- if theme.pace.enable %}
  {%- set pace_css_uri = theme.vendors.pace_css or next_vendors('pace/pace-theme-' + theme.pace.theme + '.min.css') %}
  {%- set pace_js_uri = theme.vendors.pace or next_vendors('pace/pace.min.js') %}
  <link rel="stylesheet" href="{{ pace_css_uri }}">
  <script src="{{ pace_js_uri }}"></script>
{%- endif %}

{# Export some Hexo Configurations to Front-End #}
<script id="hexo-configurations">
  var NexT = window.NexT || {};
  var CONFIG = {
    hostname: new URL('{{ config.url }}').hostname,
    root: '{{ config.root }}',
    scheme: '{{ theme.scheme }}',
    version: '{{ next_version }}',
    exturl: {{ theme.exturl }},
    sidebar: {{ theme.sidebar | json }},
    copycode: {{ theme.codeblock.copy_button | json }},
    back2top: {{ theme.back2top | json }},
    bookmark: {{ theme.bookmark | json }},
    fancybox: {{ theme.fancybox }},
    mediumzoom: {{ theme.mediumzoom }},
    lazyload: {{ theme.lazyload }},
    pangu: {{ theme.pangu }},
    comments: {{ theme.comments | json }},
    algolia: {
      appID: '{{ config.algolia.applicationID }}',
      apiKey: '{{ config.algolia.apiKey }}',
      indexName: '{{ config.algolia.indexName }}',
      hits: {{ theme.algolia_search.hits | json }},
      labels: {{ theme.algolia_search.labels | json }}
    },
    localsearch: {{ theme.local_search | json }},
    path: '{{ config.search.path }}',
    motion: {{ theme.motion | json }}
  };
</script>

<script type="text/javascript">
  var sdkInstance="appInsightsSDK";window[sdkInstance]="appInsights";var aiName=window[sdkInstance],aisdk=window[aiName]||function(e){function n(e){t[e]=function(){var n=arguments;t.queue.push(function(){t[e].apply(t,n)})}}var t={config:e};t.initialize=!0;var i=document,a=window;setTimeout(function(){var n=i.createElement("script");n.src=e.url||"https://az416426.vo.msecnd.net/scripts/b/ai.2.min.js",i.getElementsByTagName("script")[0].parentNode.appendChild(n)});try{t.cookie=i.cookie}catch(e){}t.queue=[],t.version=2;for(var r=["Event","PageView","Exception","Trace","DependencyData","Metric","PageViewPerformance"];r.length;)n("track"+r.pop());n("startTrackPage"),n("stopTrackPage");var s="Track"+r[0];if(n("start"+s),n("stop"+s),n("setAuthenticatedUserContext"),n("clearAuthenticatedUserContext"),n("flush"),!(!0===e.disableExceptionTracking||e.extensionConfig&&e.extensionConfig.ApplicationInsightsAnalytics&&!0===e.extensionConfig.ApplicationInsightsAnalytics.disableExceptionTracking)){n("_"+(r="onerror"));var o=a[r];a[r]=function(e,n,i,a,s){var c=o&&o(e,n,i,a,s);return!0!==c&&t["_"+r]({message:e,url:n,lineNumber:i,columnNumber:a,error:s}),c},e.autoExceptionInstrumented=!0}return t}(
  {
    instrumentationKey:"a736bf7a-401e-4ff9-877d-ad0e646eef5d"
  }
  );window[aiName]=aisdk,aisdk.queue&&0===aisdk.queue.length&&aisdk.trackPageView({});
</script>
