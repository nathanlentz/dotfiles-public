"use strict";var u=Object.defineProperty;var $=Object.getOwnPropertyDescriptor;var D=Object.getOwnPropertyNames;var y=Object.prototype.hasOwnProperty;var w=(t,e)=>{for(var r in e)u(t,r,{get:e[r],enumerable:!0})},P=(t,e,r,m)=>{if(e&&typeof e=="object"||typeof e=="function")for(let n of D(e))!y.call(t,n)&&n!==r&&u(t,n,{get:()=>e[n],enumerable:!(m=$(e,n))||m.enumerable});return t};var O=t=>P(u({},"__esModule",{value:!0}),t);var C={};w(C,{default:()=>M});module.exports=O(C);var T=require("@raycast/api");var s=require("@raycast/api"),f=require("child_process");var o=require("fs");var p=t=>{let e=Math.floor(t/3600),r=String(Math.floor(t%3600/60)).padStart(2,"0"),m=String(Math.floor(t%60)).padStart(2,"0");return`${e}:${r}:${m}`};var J=s.environment.supportPath+"/customTimers.json",h=(t=!1)=>{let e=(0,s.getPreferenceValues)();if(parseFloat(e.volumeSetting)>5){let r="\u26A0\uFE0F Timer alert volume should not be louder than 5 (it can get quite loud!)";return t?(0,s.showHUD)(r):(0,s.showToast)({style:s.Toast.Style.Failure,title:r}),!1}return!0};async function S(t,e="Untitled",r="default"){let n=(s.environment.supportPath+"/"+new Date().toISOString()+"---"+t+".timer").replace(/:/g,"__");(0,o.writeFileSync)(n,e);let c=(0,s.getPreferenceValues)(),g=`${s.environment.assetsPath+"/"+(r==="default"?c.selectedSound:r)}`,i=[`sleep ${t}`];i.push(`if [ -f "${n}" ]; then osascript -e 'display notification "Timer \\"${e}\\" complete" with title "Ding!"'`);let d=`afplay "${g}" --volume ${c.volumeSetting.replace(",",".")}`;if(c.selectedSound==="speak_timer_name"?i.push(`say "${e}"`):i.push(d),c.ringContinuously){let a=`${n}`.replace(".timer",".dismiss");(0,o.writeFileSync)(a,".dismiss file for Timers"),i.push(`while [ -f "${a}" ]; do ${d}; done`)}i.push(`rm "${n}"; else echo "Timer deleted"; fi`),(0,f.exec)(i.join(" && "),(a,l)=>{if(a){console.log(`error: ${a.message}`);return}if(l){console.log(`stderr: ${l}`);return}}),(0,s.popToRoot)(),await(0,s.showHUD)(`Timer "${e}" started for ${p(t)}! \u{1F389}`)}var M=async()=>{h()&&(await(0,T.closeMainWindow)(),S(60*45,"45 Minute Timer"))};
