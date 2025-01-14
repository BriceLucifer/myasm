import{_ as i,c as a,a3 as t,o as e}from"./chunks/framework.BJR1h-kV.js";const F=JSON.parse('{"title":"","description":"","frontmatter":{},"headers":[],"relativePath":"about.md","filePath":"about.md"}'),n={name:"about.md"};function l(p,s,h,k,r,o){return e(),a("div",null,s[0]||(s[0]=[t(`<ol><li>In makefile i use</li></ol><div class="language-shell vp-adaptive-theme"><button title="Copy Code" class="copy"></button><span class="lang">shell</span><pre class="shiki shiki-themes github-light github-dark vp-code" tabindex="0"><code><span class="line"><span style="--shiki-light:#6F42C1;--shiki-dark:#B392F0;">yasm</span><span style="--shiki-light:#005CC5;--shiki-dark:#79B8FF;"> -f</span><span style="--shiki-light:#032F62;--shiki-dark:#9ECBFF;"> elf64</span><span style="--shiki-light:#005CC5;--shiki-dark:#79B8FF;"> -g</span><span style="--shiki-light:#032F62;--shiki-dark:#9ECBFF;"> dwarf2</span><span style="--shiki-light:#005CC5;--shiki-dark:#79B8FF;"> -l</span><span style="--shiki-light:#032F62;--shiki-dark:#9ECBFF;"> exit.lst</span><span style="--shiki-light:#032F62;--shiki-dark:#9ECBFF;"> exit.asm</span><span style="--shiki-light:#24292E;--shiki-dark:#E1E4E8;"> </span></span>
<span class="line"></span>
<span class="line"><span style="--shiki-light:#6A737D;--shiki-dark:#6A737D;"># if your asm file use _start as your progrom start point, please use: </span></span>
<span class="line"><span style="--shiki-light:#6F42C1;--shiki-dark:#B392F0;">ld</span><span style="--shiki-light:#032F62;--shiki-dark:#9ECBFF;"> exit.o</span><span style="--shiki-light:#005CC5;--shiki-dark:#79B8FF;"> -o</span><span style="--shiki-light:#032F62;--shiki-dark:#9ECBFF;"> exit</span><span style="--shiki-light:#24292E;--shiki-dark:#E1E4E8;"> </span></span>
<span class="line"></span>
<span class="line"><span style="--shiki-light:#6A737D;--shiki-dark:#6A737D;"># if you use main as your program start point, please use:</span></span>
<span class="line"><span style="--shiki-light:#6F42C1;--shiki-dark:#B392F0;">gcc</span><span style="--shiki-light:#032F62;--shiki-dark:#9ECBFF;"> exit.o</span><span style="--shiki-light:#005CC5;--shiki-dark:#79B8FF;"> -o</span><span style="--shiki-light:#032F62;--shiki-dark:#9ECBFF;"> exit</span></span></code></pre></div><ol start="2"><li>check for different way to compile :</li></ol><div class="language-shell vp-adaptive-theme"><button title="Copy Code" class="copy"></button><span class="lang">shell</span><pre class="shiki shiki-themes github-light github-dark vp-code" tabindex="0"><code><span class="line"><span style="--shiki-light:#6F42C1;--shiki-dark:#B392F0;">du</span><span style="--shiki-light:#005CC5;--shiki-dark:#79B8FF;"> -sh</span><span style="--shiki-light:#032F62;--shiki-dark:#9ECBFF;"> exit</span></span></code></pre></div><p>As you can see, _start is much smaller than main, _start in my linux machine is 8kb, main is about 16kb.</p>`,5)]))}const c=i(n,[["render",l]]);export{F as __pageData,c as default};
