(this.webpackJsonpweb=this.webpackJsonpweb||[]).push([[0],{110:function(e,t,n){"use strict";n.r(t);var r=n(0),a=n.n(r),c=n(11),s=n.n(c),i=(n(97),n(98),n(12)),o=n.n(i),u=n(17),l=n(14),j=n(79),d=n(167),b=n(153),p=n(13),f=n(22),h=(n(165),n(4));var O=n(27);var x=function(){var e=Object(r.useState)(""),t=Object(l.a)(e,2),n=t[0],c=t[1],s=Object(r.useState)(""),i=Object(l.a)(s,2),f=i[0],x=i[1],v=Object(O.b)().enqueueSnackbar,m=Object(p.f)(),g=Object(p.g)();a.a.useEffect((function(){new URLSearchParams(g.search).get("expired")&&v("Token expired",{variant:"error"})}),[g.search]);var w=function(){var e=Object(u.a)(o.a.mark((function e(){var t,r;return o.a.wrap((function(e){for(;;)switch(e.prev=e.next){case 0:return e.prev=0,e.next=3,fetch("/token",{method:"POST",headers:{"Content-Type":"application/json"},body:JSON.stringify({user_name:n,password:f})});case 3:if((t=e.sent).ok){e.next=6;break}throw new Error;case 6:return e.next=8,t.json();case 8:(r=e.sent).access_token&&(localStorage.setItem("auth",JSON.stringify(r)),m.replace("/")),e.next=15;break;case 12:e.prev=12,e.t0=e.catch(0),v("Wrong username or password",{variant:"error"});case 15:case"end":return e.stop()}}),e,null,[[0,12]])})));return function(){return e.apply(this,arguments)}}();return Object(h.jsxs)(j.a,{style:{margin:"50px auto",width:"500px",height:"180px",display:"flex",flexDirection:"column",alignItems:"center"},children:[Object(h.jsx)(d.a,{label:"Username",value:n,onChange:function(e){return c(e.target.value)}}),Object(h.jsx)(d.a,{label:"Password",type:"password",value:f,onChange:function(e){return x(e.target.value)}}),Object(h.jsx)("br",{}),Object(h.jsx)(b.a,{variant:"contained",color:"primary",onClick:w,children:"Login"})]})},v=n(38),m=n(161),g=n(76),w=n(150),y=n(159),k=n(164),S=n(160),C=n(163),_=n(170),P=n(154),I=n(155),E=n(156),T=function(){return JSON.parse(localStorage.getItem("auth"))||{}},F=function(){var e=T(),t=e.access_token,n=e.user_name;return{Authorization:"Bearer ".concat(n,".").concat(t)}},q=function(){var e=Object(u.a)(o.a.mark((function e(t,n){var r;return o.a.wrap((function(e){for(;;)switch(e.prev=e.next){case 0:return e.next=2,fetch(t,Object(f.a)(Object(f.a)({},n),{},{headers:Object(f.a)(Object(f.a)({},null===n||void 0===n?void 0:n.headers),F())}));case 2:return r=e.sent,e.next=5,r.json();case 5:return e.abrupt("return",e.sent);case 6:case"end":return e.stop()}}),e)})));return function(t,n){return e.apply(this,arguments)}}();var D=function(){var e=Object(r.useState)("prefix"),t=Object(l.a)(e,2),n=t[0],a=t[1],c=Object(r.useState)(""),s=Object(l.a)(c,2),i=s[0],j=s[1],f=Object(r.useState)([]),x=Object(l.a)(f,2),v=x[0],m=x[1],g=Object(O.b)().enqueueSnackbar,w=Object(p.f)(),y=function(){var e=Object(u.a)(o.a.mark((function e(){var t;return o.a.wrap((function(e){for(;;)switch(e.prev=e.next){case 0:return e.prev=0,e.next=3,q("/api/search?query_type=".concat(n,"&user_input=").concat(i));case 3:if(!(t=e.sent).detail){e.next=6;break}throw new Error;case 6:m(t),e.next=12;break;case 9:e.prev=9,e.t0=e.catch(0),w.replace("/login?expired=true");case 12:case"end":return e.stop()}}),e,null,[[0,9]])})));return function(){return e.apply(this,arguments)}}(),k=function(){var e=Object(u.a)(o.a.mark((function e(t){var n,r,a,c;return o.a.wrap((function(e){for(;;)switch(e.prev=e.next){case 0:return n=t.course_id,e.next=3,q("/api/add?course_id=".concat(n),{method:"POST"});case 3:r=e.sent,a=r.message,c=(null===a||void 0===a?void 0:a.toLowerCase().includes("success"))?"success":"error",g(a,{variant:c});case 7:case"end":return e.stop()}}),e)})));return function(t){return e.apply(this,arguments)}}();return Object(h.jsxs)(h.Fragment,{children:[Object(h.jsxs)("div",{style:{display:"flex",alignItems:"flex-end"},children:[Object(h.jsxs)(C.a,{value:n,onChange:function(e){return a(e.target.value)},children:[Object(h.jsx)(_.a,{value:"prefix",children:"Prefix"}),Object(h.jsx)(_.a,{value:"course_number",children:"Course Number"}),Object(h.jsx)(_.a,{value:"faculty_name",children:"Faculty Name"})]}),Object(h.jsx)(d.a,{label:"Search",value:i,onChange:function(e){return j(e.target.value)}}),Object(h.jsx)(b.a,{variant:"contained",color:"primary",onClick:y,children:"Search"})]}),Object(h.jsx)("br",{}),v.map((function(e){return Object(h.jsxs)(P.a,{raised:!0,style:{marginBottom:5},children:[Object(h.jsx)(I.a,{title:"".concat(e.course_num,": ").concat(e.course_name),subheader:"".concat(e.course_description.join(" "))}),Object(h.jsx)(E.a,{children:Object(h.jsx)(b.a,{variant:"contained",color:"primary",onClick:function(){return k(e)},children:"Add"})})]},e.course_id)}))]})},N=n(65),L=n(54),B=n(157),J=n(162);var U=function(e){var t=e.goToCourse,n=Object(r.useState)("Spring 2020"),a=Object(l.a)(n,2),c=a[0],s=a[1],i=Object(r.useState)(["Spring 2020"]),j=Object(l.a)(i,2),d=j[0],f=j[1],x=Object(r.useState)([]),v=Object(l.a)(x,2),m=v[0],g=v[1],w=Object(O.b)().enqueueSnackbar,y=Object(p.f)(),k=T(),S=k.role,C=k.restriction,_=function(){var e=Object(u.a)(o.a.mark((function e(){var t,n,r;return o.a.wrap((function(e){for(;;)switch(e.prev=e.next){case 0:return e.prev=0,t="faculty"===S?"/api/faculty/course":"/api/registeredCourses",e.next=4,q(t);case 4:if(!(n=e.sent).detail){e.next=7;break}throw new Error;case 7:g(n),r=Object(N.a)(d),n.forEach((function(e){var t="".concat(e.quarter," ").concat(e.year_offered);r.includes(t)||r.push(t)})),f(r),e.next=15;break;case 13:e.prev=13,e.t0=e.catch(0);case 15:case"end":return e.stop()}}),e,null,[[0,13]])})));return function(){return e.apply(this,arguments)}}();Object(r.useEffect)((function(){localStorage.getItem("auth")?_():y.replace("/login")}),[]);var F=function(){var e=Object(u.a)(o.a.mark((function e(t){var n,r,a,c;return o.a.wrap((function(e){for(;;)switch(e.prev=e.next){case 0:return n=t.course_id,e.next=3,q("/api/drop?course_id=".concat(n),{method:"POST"});case 3:r=e.sent,a=r.message,c=(null===a||void 0===a?void 0:a.toLowerCase().includes("success"))?"success":"error",w(a,{variant:c}),_();case 8:case"end":return e.stop()}}),e)})));return function(t){return e.apply(this,arguments)}}(),D=function(){var e=Object(u.a)(o.a.mark((function e(n){return o.a.wrap((function(e){for(;;)switch(e.prev=e.next){case 0:t(n);case 1:case"end":return e.stop()}}),e)})));return function(t){return e.apply(this,arguments)}}(),U=m.filter((function(e){var t=c.split(" "),n=Object(l.a)(t,2),r=n[0],a=n[1];return e.quarter===r&&e.year_offered===parseInt(a)}));return Object(h.jsxs)(h.Fragment,{children:[Object(h.jsx)("br",{}),Object(h.jsx)(L.a,{variant:"h4",children:"faculty"===S?"Your courses":"Your registered courses"}),"student"===S&&Object(h.jsx)(L.a,{variant:"h6",children:"no restriction"===(null===C||void 0===C?void 0:C.toLowerCase())?"No restriction":"Restriction: ".concat(C)}),d.map((function(e){return Object(h.jsx)(b.a,{color:c===e?"secondary":"primary",variant:"contained",onClick:function(){return s(e)},children:e},e)})),Object(h.jsx)("br",{}),U.map((function(e){var t=null,n=null;return"student"===S&&"Spring 2020"===c&&(t=Object(h.jsx)(E.a,{children:Object(h.jsx)(b.a,{variant:"contained",color:"primary",onClick:function(){return F(e)},children:"Drop"})})),"student"===S&&(n=Object(h.jsxs)(B.a,{children:["Spring 2020"===c&&Object(h.jsxs)(J.a,{display:"flex",children:[Object(h.jsx)(J.a,{width:100,children:"Status: "}),e.status]}),e.grade&&Object(h.jsxs)(J.a,{display:"flex",children:[Object(h.jsx)(J.a,{width:100,children:"Grade: "}),e.grade]})]})),"faculty"===S&&(t=Object(h.jsx)(E.a,{children:Object(h.jsx)(b.a,{variant:"contained",color:"primary",onClick:function(){return D(e)},children:"Edit"})})),Object(h.jsxs)(P.a,{raised:!0,style:{marginBottom:5},children:[Object(h.jsx)(I.a,{title:"".concat(e.course_num,": ").concat(e.course_name),subheader:"".concat(e.prefix)}),n,t]},e.course_id)}))]})},R=n(158),G=n(168);function W(e){var t=e.onClose,n=e.open,a=Object(O.b)().enqueueSnackbar,c=Object(r.useState)(""),s=Object(l.a)(c,2),i=s[0],j=s[1],p=Object(r.useState)(""),f=Object(l.a)(p,2),x=f[0],v=f[1],m=function(){var e=Object(u.a)(o.a.mark((function e(){return o.a.wrap((function(e){for(;;)switch(e.prev=e.next){case 0:if(i===x){e.next=3;break}return a("Password mismatch",{variant:"error"}),e.abrupt("return");case 3:if(!(i.length<8)){e.next=6;break}return a("Password must be at least 8 characters long",{variant:"error"}),e.abrupt("return");case 6:return e.next=8,q("/api/password?new_password=".concat(i),{method:"POST"});case 8:e.sent,a("Password changed successfully",{variant:"success"}),t();case 11:case"end":return e.stop()}}),e)})));return function(){return e.apply(this,arguments)}}();return Object(h.jsx)(G.a,{onClose:function(){t()},"aria-labelledby":"simple-dialog-title",open:n,children:Object(h.jsxs)("div",{style:{display:"flex",flexDirection:"column",alignItems:"center",padding:20},children:[Object(h.jsx)(R.a,{id:"simple-dialog-title",children:"Change password"}),Object(h.jsx)(d.a,{fullWidth:!0,label:"New password",type:"password",value:i,onChange:function(e){return j(e.target.value)}}),Object(h.jsx)(d.a,{fullWidth:!0,label:"Re-enter new password",type:"password",value:x,onChange:function(e){return v(e.target.value)}}),Object(h.jsx)("br",{}),Object(h.jsx)(b.a,{color:"primary",variant:"contained",onClick:m,children:"Change"})]})})}function A(){var e=a.a.useState(!1),t=Object(l.a)(e,2),n=t[0],r=t[1];return Object(h.jsxs)(h.Fragment,{children:[Object(h.jsx)(b.a,{style:{color:"white",width:200},onClick:function(){r(!0)},children:"Change password"}),Object(h.jsx)(W,{open:n,onClose:function(){r(!1)}})]})}var Y=function(e){var t=e.course,n=Object(r.useState)([]),a=Object(l.a)(n,2),c=a[0],s=a[1],i=Object(O.b)().enqueueSnackbar,j=function(){var e=Object(u.a)(o.a.mark((function e(){var n,r;return o.a.wrap((function(e){for(;;)switch(e.prev=e.next){case 0:return e.prev=0,n="/api/faculty/student?course_id=".concat(t.course_id),e.next=4,q(n);case 4:r=e.sent,s(r),e.next=10;break;case 8:e.prev=8,e.t0=e.catch(0);case 10:case"end":return e.stop()}}),e,null,[[0,8]])})));return function(){return e.apply(this,arguments)}}();Object(r.useEffect)((function(){t&&j()}),[t]);var p=function(){var e=Object(u.a)(o.a.mark((function e(){var n;return o.a.wrap((function(e){for(;;)switch(e.prev=e.next){case 0:return n=null===t||void 0===t?void 0:t.course_id,e.next=3,Promise.all(c.map(function(){var e=Object(u.a)(o.a.mark((function e(t){var r,a,c;return o.a.wrap((function(e){for(;;)switch(e.prev=e.next){case 0:return r=t.UCID,a=t.student_grade,c="/api/faculty/grade?grade=".concat(a,"&course_id=").concat(n,"&student_id=").concat(r),e.abrupt("return",q(c,{method:"POST"}));case 4:case"end":return e.stop()}}),e)})));return function(t){return e.apply(this,arguments)}}()));case 3:e.sent,i("Student grades updated successfully",{variant:"success"});case 5:case"end":return e.stop()}}),e)})));return function(){return e.apply(this,arguments)}}();return Object(h.jsxs)(h.Fragment,{children:[Object(h.jsx)(L.a,{variant:"h4",children:"Editing course"}),Object(h.jsx)(L.a,{variant:"h5",children:"".concat(t.course_num,": ").concat(t.course_name)}),c.map((function(e,t){return Object(h.jsx)(P.a,{style:{marginBottom:5},children:Object(h.jsx)(B.a,{children:Object(h.jsxs)(J.a,{display:"flex",flexDirection:"row",alignItems:"flex-end",children:[Object(h.jsx)(J.a,{width:250,children:Object(h.jsx)(L.a,{children:e.student_name})}),Object(h.jsx)(L.a,{children:"Grade"}),Object(h.jsx)(J.a,{width:10}),Object(h.jsx)(d.a,{style:{width:50},value:e.student_grade,onChange:function(e){return function(e,t){var n=e[e.length-1];s((function(e){var r=Object(N.a)(e);return r[t]=Object(f.a)(Object(f.a)({},r[t]),{},{student_grade:n}),r}))}(e.target.value,t)}})]})})},e.UCID)})),Object(h.jsx)(b.a,{variant:"contained",color:"primary",onClick:p,children:"Update"})]})};function z(e){var t=e.children,n=e.value,r=e.index,a=Object(g.a)(e,["children","value","index"]);return Object(h.jsx)("div",Object(f.a)(Object(f.a)({role:"tabpanel",hidden:n!==r,id:"simple-tabpanel-".concat(r),"aria-labelledby":"simple-tab-".concat(r)},a),{},{children:n===r&&t}))}function M(e){return{id:"simple-tab-".concat(e),"aria-controls":"simple-tabpanel-".concat(e)}}var H=Object(w.a)((function(e){return{root:{flexGrow:1,backgroundColor:e.palette.background.paper}}}));function K(){var e,t=H(),n=a.a.useState(0),c=Object(l.a)(n,2),s=c[0],i=c[1],j=a.a.useState(null),d=Object(l.a)(j,2),O=d[0],x=d[1],v=Object(p.f)(),m=null===(e=T())||void 0===e?void 0:e.role,g=function(){var e=Object(u.a)(o.a.mark((function e(){return o.a.wrap((function(e){for(;;)switch(e.prev=e.next){case 0:return e.next=2,q("/logout");case 2:localStorage.removeItem("auth"),v.replace("/login");case 4:case"end":return e.stop()}}),e)})));return function(){return e.apply(this,arguments)}}();return Object(r.useEffect)((function(){2!==s||O||i(0)}),[s,O]),Object(h.jsxs)("div",{className:t.root,children:[Object(h.jsxs)(y.a,{position:"static",children:[Object(h.jsxs)("div",{style:{display:"flex",flexDirection:"row-reverse"},children:[Object(h.jsx)(b.a,{style:{width:150,color:"white"},onClick:g,children:"Sign out"}),Object(h.jsx)(A,{})]}),Object(h.jsxs)(k.a,{value:s,onChange:function(e,t){i(t)},"aria-label":"simple tabs example",style:{width:"50%"},children:[Object(h.jsx)(S.a,Object(f.a)({label:"faculty"===m?"Courses":"Registered"},M(0))),"faculty"!==m&&Object(h.jsx)(S.a,Object(f.a)({label:"Search"},M(1)))]})]}),Object(h.jsx)(z,{value:s,index:0,children:Object(h.jsx)(U,{goToCourse:function(e){x(e),i(2)}})}),"faculty"!==m&&Object(h.jsx)(z,{value:s,index:1,children:Object(h.jsx)(D,{})}),"faculty"===m&&Object(h.jsx)(z,{value:s,index:2,children:Object(h.jsx)(Y,{course:O})})]})}var Q=function(){return Object(h.jsx)(O.a,{children:Object(h.jsx)(v.a,{children:Object(h.jsx)(m.a,{children:Object(h.jsxs)(p.c,{children:[Object(h.jsx)(p.a,{path:"/login",children:Object(h.jsx)(x,{})}),Object(h.jsx)(p.a,{path:"/",children:Object(h.jsx)(K,{})})]})})})})},V=function(e){e&&e instanceof Function&&n.e(3).then(n.bind(null,173)).then((function(t){var n=t.getCLS,r=t.getFID,a=t.getFCP,c=t.getLCP,s=t.getTTFB;n(e),r(e),a(e),c(e),s(e)}))};s.a.render(Object(h.jsx)(a.a.StrictMode,{children:Object(h.jsx)(Q,{})}),document.getElementById("root")),V()},97:function(e,t,n){},98:function(e,t,n){}},[[110,1,2]]]);
//# sourceMappingURL=main.53e2cd84.chunk.js.map