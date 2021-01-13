<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
   <style type="text/css">
   /*
   
   */
   
    *{margin: 0; padding: 0;}
            button{
               background: 0 none; border: 0 none;
            }

            .buttons{
               position: relative; 
               text-align: center; 
               margin-top: 100px;
            }
            .buttons button{
               overflow: hidden; 
               position: relative; 
               display: inline-block; 
               vertical-align: top; 
               width: 200px; 
               height: 100px; 
               line-height: 100px; 
               border: 1px solid #225ea7; 
               transition: all 0.5s;
            }
            .buttons button:hover{color: #fff;}
            .buttons button:before{
               content: ""; 
               z-index: -1; 
               position: absolute; 
               background: #225ea7; 
               transition: all 1s;
            }
            .buttons.buttons2 .button5:before{
            left: 50%; 
            top: 0; 
            transform: translateX(-50%); 
            width: 0; 
            height: 100%;
           }
            .buttons.buttons2 .button5:hover:before{width: 100%;}
   </style>
   <script type="text/javascript">
   /*
   
   */
   </script>
</head>
<body>
    <div class="buttons buttons2" style="float:left; margin-left:40%;">
            <button type="button" class="button5">LOG IN</button>
     </div>
     <div class="buttons buttons2" style="display:inline-block;margin-left:20px;">
            <button type="button" class="button5">JOIN</button>
     </div>
</body>
</html>