
; ===== F_0000 =====
F_0000:
  0000:  0c 94 6e 00  jmp L_00dc                     ; -> 0x00dc
  0004:  0c 94 96 00  jmp L_012c                     ; -> 0x012c
  0008:  0c 94 96 00  jmp L_012c                     ; -> 0x012c
  000c:  0c 94 8d 08  jmp L_111a                     ; -> 0x111a
  0010:  0c 94 8d 08  jmp L_111a                     ; -> 0x111a
  0014:  0c 94 8d 08  jmp L_111a                     ; -> 0x111a
  0018:  0c 94 96 00  jmp L_012c                     ; -> 0x012c
  001c:  0c 94 96 00  jmp L_012c                     ; -> 0x012c
  0020:  0c 94 96 00  jmp L_012c                     ; -> 0x012c
  0024:  0c 94 96 00  jmp L_012c                     ; -> 0x012c
  0028:  0c 94 96 00  jmp L_012c                     ; -> 0x012c
  002c:  0c 94 96 00  jmp L_012c                     ; -> 0x012c
  0030:  0c 94 96 00  jmp L_012c                     ; -> 0x012c
  0034:  0c 94 96 00  jmp L_012c                     ; -> 0x012c
  0038:  0c 94 96 00  jmp L_012c                     ; -> 0x012c
  003c:  0c 94 96 00  jmp L_012c                     ; -> 0x012c
  0040:  0c 94 43 08  jmp L_1086                     ; -> 0x1086
  0044:  0c 94 96 00  jmp L_012c                     ; -> 0x012c
  0048:  0c 94 11 08  jmp L_1022                     ; -> 0x1022
  004c:  0c 94 eb 07  jmp L_0fd6                     ; -> 0x0fd6
  0050:  0c 94 96 00  jmp L_012c                     ; -> 0x012c
  0054:  0c 94 96 00  jmp L_012c                     ; -> 0x012c
  0058:  0c 94 96 00  jmp L_012c                     ; -> 0x012c
  005c:  0c 94 96 00  jmp L_012c                     ; -> 0x012c
  0060:  0c 94 96 00  jmp L_012c                     ; -> 0x012c
  0064:  0c 94 96 00  jmp L_012c                     ; -> 0x012c
0068:  .db 0x00, 0x00, 0x00, 0x00, 0x24, 0x00, 0x27, 0x00, 0x2a, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x02
0078:  .db 0x01, 0x00, 0x00, 0x03, 0x04, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
0086:  .string "DFPlayer Mini online."
009c:  .db 0x00, 0x00, 0x00, 0x00, 0x23, 0x00, 0x26, 0x00, 0x29, 0x00, 0x00, 0x00, 0x00, 0x00, 0x25, 0x00
00ac:  .db 0x28, 0x00, 0x2b, 0x00, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x02, 0x02, 0x02, 0x02
00bc:  .db 0x02, 0x02, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x01, 0x02, 0x04, 0x08, 0x10, 0x20, 0x40, 0x80
00cc:  .db 0x01, 0x02, 0x04, 0x08, 0x10, 0x20, 0x01, 0x02, 0x04, 0x08, 0x10, 0x20, 0x57, 0x09, 0x60, 0x1d
L_00dc:
  00dc:  11 24        clr r1                         
  00de:  1f be        out 0x3f, r1                   ; SREG
  00e0:  cf ef        ldi r28, 0xff                  
  00e2:  d8 e0        ldi r29, 0x08                  ; r29:r28 = 0x08ff (2303)
  00e4:  de bf        out 0x3e, r29                  ; SPH
  00e6:  cd bf        out 0x3d, r28                  ; SPL
  00e8:  12 e0        ldi r17, 0x02                  
  00ea:  a0 e0        ldi r26, 0x00                  
  00ec:  b1 e0        ldi r27, 0x01                  ; r27:r26 = 0x0100 (256)
  00ee:  ec ec        ldi r30, 0xcc                  
  00f0:  fd e3        ldi r31, 0x3d                  ; r31:r30 = 0x3dcc (15820)
  00f2:  02 c0        rjmp L_00f8                    ; -> 0x00f8
L_00f4:
  00f4:  05 90        lpm r0, Z+                     
  00f6:  0d 92        st X+, r0                      
L_00f8:
  00f8:  a2 3b        cpi r26, 0xb2                  
  00fa:  b1 07        cpc r27, r17                   
  00fc:  d9 f7        brne L_00f4                    ; -> 0x00f4
  00fe:  24 e0        ldi r18, 0x04                  
  0100:  a2 eb        ldi r26, 0xb2                  
  0102:  b2 e0        ldi r27, 0x02                  ; r27:r26 = 0x02b2 (690)
  0104:  01 c0        rjmp L_0108                    ; -> 0x0108
L_0106:
  0106:  1d 92        st X+, r1                      
L_0108:
  0108:  af 33        cpi r26, 0x3f                  
  010a:  b2 07        cpc r27, r18                   
  010c:  e1 f7        brne L_0106                    ; -> 0x0106
  010e:  10 e0        ldi r17, 0x00                  
  0110:  cd e6        ldi r28, 0x6d                  
  0112:  d0 e0        ldi r29, 0x00                  ; r29:r28 = 0x006d (109)
  0114:  04 c0        rjmp L_011e                    ; -> 0x011e
L_0116:
  0116:  21 97        sbiw r29:r28, 1                
  0118:  fe 01        movw r31:r30, r29:r28          
  011a:  0e 94 ae 1d  call ctor_call                 ; -> 0x3b5c
L_011e:
  011e:  cc 36        cpi r28, 0x6c                  
  0120:  d1 07        cpc r29, r17                   
  0122:  c9 f7        brne L_0116                    ; -> 0x0116
  0124:  0e 94 36 0a  call main                      ; -> 0x146c
  0128:  0c 94 d9 1e  jmp L_3db2                     ; -> 0x3db2
L_012c:
  012c:  0c 94 00 00  jmp F_0000                     ; -> 0x0000
L_0130:
  0130:  af 92        push r10                       
  0132:  bf 92        push r11                       
  0134:  cf 92        push r12                       
  0136:  df 92        push r13                       
  0138:  ef 92        push r14                       
  013a:  ff 92        push r15                       
  013c:  0f 93        push r16                       
  013e:  1f 93        push r17                       
  0140:  cf 93        push r28                       
  0142:  df 93        push r29                       
  0144:  6c 01        movw r13:r12, r25:r24          
  0146:  7b 01        movw r15:r14, r23:r22          
  0148:  8b 01        movw r17:r16, r23:r22          
  014a:  04 0f        add r16, r20                   
  014c:  15 1f        adc r17, r21                   
  014e:  eb 01        movw r29:r28, r23:r22          
L_0150:
  0150:  5e 01        movw r11:r10, r29:r28          
  0152:  ae 18        sub r10, r14                   
  0154:  bf 08        sbc r11, r15                   
  0156:  c0 17        cp r28, r16                    
  0158:  d1 07        cpc r29, r17                   
  015a:  59 f0        breq L_0172                    ; -> 0x0172
  015c:  69 91        ld r22, Y+                     
  015e:  d6 01        movw r27:r26, r13:r12          
  0160:  ed 91        ld r30, X+                     
  0162:  fc 91        ld r31, X                      
  0164:  01 90        ld r0, Z+                      
  0166:  f0 81        ld r31, Z                      
  0168:  e0 2d        mov r30, r0                    
  016a:  c6 01        movw r25:r24, r13:r12          
  016c:  09 95        icall                          
  016e:  89 2b        or r24, r25                    
  0170:  79 f7        brne L_0150                    ; -> 0x0150
L_0172:
  0172:  c5 01        movw r25:r24, r11:r10          
  0174:  df 91        pop r29                        
  0176:  cf 91        pop r28                        
  0178:  1f 91        pop r17                        
  017a:  0f 91        pop r16                        
  017c:  ff 90        pop r15                        
  017e:  ef 90        pop r14                        
  0180:  df 90        pop r13                        
  0182:  cf 90        pop r12                        
  0184:  bf 90        pop r11                        
  0186:  af 90        pop r10                        
  0188:  08 95        ret                            
  018a:  fc 01        movw r31:r30, r25:r24          
  018c:  53 8d        ldd r21, Z+27                  
  018e:  44 8d        ldd r20, Z+28                  
  0190:  25 2f        mov r18, r21                   
  0192:  30 e0        ldi r19, 0x00                  
  0194:  84 2f        mov r24, r20                   
  0196:  90 e0        ldi r25, 0x00                  
  0198:  82 1b        sub r24, r18                   
  019a:  93 0b        sbc r25, r19                   
  019c:  54 17        cp r21, r20                    
  019e:  10 f0        brcs L_01a4                    ; -> 0x01a4
  01a0:  cf 96        adiw r25:r24, 63               
  01a2:  08 95        ret                            
L_01a4:
  01a4:  01 97        sbiw r25:r24, 1                
  01a6:  08 95        ret                            
  01a8:  fc 01        movw r31:r30, r25:r24          
  01aa:  91 8d        ldd r25, Z+25                  
  01ac:  82 8d        ldd r24, Z+26                  
  01ae:  98 17        cp r25, r24                    
  01b0:  61 f0        breq L_01ca                    ; -> 0x01ca
  01b2:  a2 8d        ldd r26, Z+26                  
  01b4:  ae 0f        add r26, r30                   
  01b6:  bf 2f        mov r27, r31                   
  01b8:  b1 1d        adc r27, r1                    
  01ba:  5d 96        adiw r27:r26, 29               
  01bc:  8c 91        ld r24, X                      
  01be:  92 8d        ldd r25, Z+26                  
  01c0:  9f 5f        subi r25, 0xff                 
  01c2:  9f 73        andi r25, 0x3f                 
  01c4:  92 8f        std Z+26, r25                  
  01c6:  90 e0        ldi r25, 0x00                  
  01c8:  08 95        ret                            
L_01ca:
  01ca:  8f ef        ldi r24, 0xff                  ; r25:r24 = 0x00ff (255)
  01cc:  9f ef        ldi r25, 0xff                  ; r25:r24 = 0xffff (65535)
  01ce:  08 95        ret                            
  01d0:  fc 01        movw r31:r30, r25:r24          
  01d2:  91 8d        ldd r25, Z+25                  
  01d4:  82 8d        ldd r24, Z+26                  
  01d6:  98 17        cp r25, r24                    
  01d8:  31 f0        breq L_01e6                    ; -> 0x01e6
  01da:  82 8d        ldd r24, Z+26                  
  01dc:  e8 0f        add r30, r24                   
  01de:  f1 1d        adc r31, r1                    
  01e0:  85 8d        ldd r24, Z+29                  
  01e2:  90 e0        ldi r25, 0x00                  
  01e4:  08 95        ret                            
L_01e6:
  01e6:  8f ef        ldi r24, 0xff                  ; r25:r24 = 0x00ff (255)
  01e8:  9f ef        ldi r25, 0xff                  ; r25:r24 = 0xffff (65535)
  01ea:  08 95        ret                            

; ===== Serial_available =====
Serial_available:
  01ec:  fc 01        movw r31:r30, r25:r24          
  01ee:  91 8d        ldd r25, Z+25                  
  01f0:  22 8d        ldd r18, Z+26                  
  01f2:  89 2f        mov r24, r25                   
  01f4:  90 e0        ldi r25, 0x00                  
  01f6:  80 5c        subi r24, 0xc0                 
  01f8:  9f 4f        sbci r25, 0xff                 
  01fa:  82 1b        sub r24, r18                   
  01fc:  91 09        sbc r25, r1                    
  01fe:  8f 73        andi r24, 0x3f                 
  0200:  99 27        clr r25                        
  0202:  08 95        ret                            

; ===== Serial_has_data =====
Serial_has_data:
  0204:  81 e0        ldi r24, 0x01                  
  0206:  93 e0        ldi r25, 0x03                  ; r25:r24 = 0x0301 (769) Serial
  0208:  0e 94 f6 00  call Serial_available          ; -> 0x01ec
  020c:  21 e0        ldi r18, 0x01                  
  020e:  89 2b        or r24, r25                    
  0210:  09 f4        brne L_0214                    ; -> 0x0214
  0212:  20 e0        ldi r18, 0x00                  
L_0214:
  0214:  82 2f        mov r24, r18                   
  0216:  08 95        ret                            
  0218:  80 e0        ldi r24, 0x00                  
  021a:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  021c:  89 2b        or r24, r25                    
  021e:  29 f0        breq L_022a                    ; -> 0x022a
  0220:  0e 94 02 01  call Serial_has_data           ; -> 0x0204
  0224:  81 11        cpse r24, r1                   
  0226:  0c 94 00 00  jmp F_0000                     ; -> 0x0000
L_022a:
  022a:  08 95        ret                            

; ===== HardwareSerial_tx_udr_empty =====
HardwareSerial_tx_udr_empty:
  022c:  fc 01        movw r31:r30, r25:r24          
  022e:  a4 8d        ldd r26, Z+28                  
  0230:  a8 0f        add r26, r24                   
  0232:  b9 2f        mov r27, r25                   
  0234:  b1 1d        adc r27, r1                    
  0236:  a3 5a        subi r26, 0xa3                 
  0238:  bf 4f        sbci r27, 0xff                 
  023a:  2c 91        ld r18, X                      
  023c:  84 8d        ldd r24, Z+28                  
  023e:  90 e0        ldi r25, 0x00                  
  0240:  01 96        adiw r25:r24, 1                
  0242:  8f 73        andi r24, 0x3f                 
  0244:  99 27        clr r25                        
  0246:  84 8f        std Z+28, r24                  
  0248:  a6 89        ldd r26, Z+22                  
  024a:  b7 89        ldd r27, Z+23                  
  024c:  2c 93        st X, r18                      
  024e:  a0 89        ldd r26, Z+16                  
  0250:  b1 89        ldd r27, Z+17                  
  0252:  8c 91        ld r24, X                      
  0254:  83 70        andi r24, 0x03                 
  0256:  80 64        ori r24, 0x40                  
  0258:  8c 93        st X, r24                      
  025a:  93 8d        ldd r25, Z+27                  
  025c:  84 8d        ldd r24, Z+28                  
  025e:  98 13        cpse r25, r24                  
  0260:  06 c0        rjmp L_026e                    ; -> 0x026e
  0262:  02 88        ldd r0, Z+18                   
  0264:  f3 89        ldd r31, Z+19                  
  0266:  e0 2d        mov r30, r0                    
  0268:  80 81        ld r24, Z                      
  026a:  8f 7d        andi r24, 0xdf                 
  026c:  80 83        st Z, r24                      
L_026e:
  026e:  08 95        ret                            

; ===== HardwareSerial_write =====
HardwareSerial_write:
  0270:  ef 92        push r14                       
  0272:  ff 92        push r15                       
  0274:  0f 93        push r16                       
  0276:  1f 93        push r17                       
  0278:  cf 93        push r28                       
  027a:  df 93        push r29                       
  027c:  ec 01        movw r29:r28, r25:r24          
  027e:  81 e0        ldi r24, 0x01                  
  0280:  88 8f        std Y+24, r24                  
  0282:  9b 8d        ldd r25, Y+27                  
  0284:  8c 8d        ldd r24, Y+28                  
  0286:  98 13        cpse r25, r24                  
  0288:  1a c0        rjmp L_02be                    ; -> 0x02be
  028a:  e8 89        ldd r30, Y+16                  
  028c:  f9 89        ldd r31, Y+17                  
  028e:  80 81        ld r24, Z                      
  0290:  85 ff        sbrs r24, 5                    
  0292:  15 c0        rjmp L_02be                    ; -> 0x02be
  0294:  9f b7        in r25, 0x3f                   ; SREG
  0296:  f8 94        cli                            
  0298:  ee 89        ldd r30, Y+22                  
  029a:  ff 89        ldd r31, Y+23                  
  029c:  60 83        st Z, r22                      
  029e:  e8 89        ldd r30, Y+16                  
  02a0:  f9 89        ldd r31, Y+17                  
  02a2:  80 81        ld r24, Z                      
  02a4:  83 70        andi r24, 0x03                 
  02a6:  80 64        ori r24, 0x40                  
L_02a8:
  02a8:  80 83        st Z, r24                      
  02aa:  9f bf        out 0x3f, r25                  ; SREG
  02ac:  81 e0        ldi r24, 0x01                  
  02ae:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0001 (1)
  02b0:  df 91        pop r29                        
  02b2:  cf 91        pop r28                        
  02b4:  1f 91        pop r17                        
  02b6:  0f 91        pop r16                        
  02b8:  ff 90        pop r15                        
  02ba:  ef 90        pop r14                        
  02bc:  08 95        ret                            
L_02be:
  02be:  f6 2e        mov r15, r22                   
  02c0:  0b 8d        ldd r16, Y+27                  
  02c2:  10 e0        ldi r17, 0x00                  
  02c4:  0f 5f        subi r16, 0xff                 
  02c6:  1f 4f        sbci r17, 0xff                 
  02c8:  0f 73        andi r16, 0x3f                 
  02ca:  11 27        clr r17                        
  02cc:  e0 2e        mov r14, r16                   
L_02ce:
  02ce:  8c 8d        ldd r24, Y+28                  
  02d0:  8e 11        cpse r24, r14                  
  02d2:  0c c0        rjmp L_02ec                    ; -> 0x02ec
  02d4:  0f b6        in r0, 0x3f                    ; SREG
  02d6:  07 fc        sbrc r0, 7                     
  02d8:  fa cf        rjmp L_02ce                    ; -> 0x02ce
  02da:  e8 89        ldd r30, Y+16                  
  02dc:  f9 89        ldd r31, Y+17                  
  02de:  80 81        ld r24, Z                      
  02e0:  85 ff        sbrs r24, 5                    
  02e2:  f5 cf        rjmp L_02ce                    ; -> 0x02ce
  02e4:  ce 01        movw r25:r24, r29:r28          
  02e6:  0e 94 16 01  call HardwareSerial_tx_udr_empty ; -> 0x022c
  02ea:  f1 cf        rjmp L_02ce                    ; -> 0x02ce
L_02ec:
  02ec:  eb 8d        ldd r30, Y+27                  
  02ee:  ec 0f        add r30, r28                   
  02f0:  fd 2f        mov r31, r29                   
  02f2:  f1 1d        adc r31, r1                    
  02f4:  e3 5a        subi r30, 0xa3                 
  02f6:  ff 4f        sbci r31, 0xff                 
  02f8:  f0 82        st Z, r15                      
  02fa:  9f b7        in r25, 0x3f                   ; SREG
  02fc:  f8 94        cli                            
  02fe:  0b 8f        std Y+27, r16                  
  0300:  ea 89        ldd r30, Y+18                  
  0302:  fb 89        ldd r31, Y+19                  
  0304:  80 81        ld r24, Z                      
  0306:  80 62        ori r24, 0x20                  
  0308:  cf cf        rjmp L_02a8                    ; -> 0x02a8
  030a:  cf 93        push r28                       
  030c:  df 93        push r29                       
  030e:  ec 01        movw r29:r28, r25:r24          
  0310:  88 8d        ldd r24, Y+24                  
  0312:  88 23        tst r24                        
  0314:  b9 f0        breq L_0344                    ; -> 0x0344
L_0316:
  0316:  aa 89        ldd r26, Y+18                  
  0318:  bb 89        ldd r27, Y+19                  
L_031a:
  031a:  e8 89        ldd r30, Y+16                  
  031c:  f9 89        ldd r31, Y+17                  
L_031e:
  031e:  8c 91        ld r24, X                      
  0320:  85 fd        sbrc r24, 5                    
  0322:  03 c0        rjmp L_032a                    ; -> 0x032a
  0324:  80 81        ld r24, Z                      
  0326:  86 fd        sbrc r24, 6                    
  0328:  0d c0        rjmp L_0344                    ; -> 0x0344
L_032a:
  032a:  0f b6        in r0, 0x3f                    ; SREG
  032c:  07 fc        sbrc r0, 7                     
  032e:  f7 cf        rjmp L_031e                    ; -> 0x031e
  0330:  8c 91        ld r24, X                      
  0332:  85 ff        sbrs r24, 5                    
  0334:  f2 cf        rjmp L_031a                    ; -> 0x031a
  0336:  80 81        ld r24, Z                      
  0338:  85 ff        sbrs r24, 5                    
  033a:  ed cf        rjmp L_0316                    ; -> 0x0316
  033c:  ce 01        movw r25:r24, r29:r28          
  033e:  0e 94 16 01  call HardwareSerial_tx_udr_empty ; -> 0x022c
  0342:  e9 cf        rjmp L_0316                    ; -> 0x0316
L_0344:
  0344:  df 91        pop r29                        
  0346:  cf 91        pop r28                        
  0348:  08 95        ret                            

; ===== turnOffPWM =====
turnOffPWM:
  034a:  83 30        cpi r24, 0x03                  
  034c:  81 f0        breq L_036e                    ; -> 0x036e
  034e:  28 f4        brcc L_035a                    ; -> 0x035a
  0350:  81 30        cpi r24, 0x01                  
  0352:  99 f0        breq L_037a                    ; -> 0x037a
  0354:  82 30        cpi r24, 0x02                  
  0356:  a9 f0        breq L_0382                    ; -> 0x0382
  0358:  08 95        ret                            
L_035a:
  035a:  87 30        cpi r24, 0x07                  
  035c:  a9 f0        breq L_0388                    ; -> 0x0388
  035e:  88 30        cpi r24, 0x08                  
  0360:  c9 f0        breq L_0394                    ; -> 0x0394
  0362:  84 30        cpi r24, 0x04                  
  0364:  b1 f4        brne L_0392                    ; -> 0x0392
  0366:  80 91 80 00  lds r24, 0x0080                ; TCCR1A
  036a:  8f 7d        andi r24, 0xdf                 
  036c:  03 c0        rjmp L_0374                    ; -> 0x0374
L_036e:
  036e:  80 91 80 00  lds r24, 0x0080                ; TCCR1A
  0372:  8f 77        andi r24, 0x7f                 
L_0374:
  0374:  80 93 80 00  sts 0x0080, r24                ; TCCR1A
  0378:  08 95        ret                            
L_037a:
  037a:  84 b5        in r24, 0x24                   ; TCCR0A
  037c:  8f 77        andi r24, 0x7f                 
L_037e:
  037e:  84 bd        out 0x24, r24                  ; TCCR0A
  0380:  08 95        ret                            
L_0382:
  0382:  84 b5        in r24, 0x24                   ; TCCR0A
  0384:  8f 7d        andi r24, 0xdf                 
  0386:  fb cf        rjmp L_037e                    ; -> 0x037e
L_0388:
  0388:  80 91 b0 00  lds r24, 0x00b0                ; TCCR2A
  038c:  8f 77        andi r24, 0x7f                 
L_038e:
  038e:  80 93 b0 00  sts 0x00b0, r24                ; TCCR2A
L_0392:
  0392:  08 95        ret                            
L_0394:
  0394:  80 91 b0 00  lds r24, 0x00b0                ; TCCR2A
  0398:  8f 7d        andi r24, 0xdf                 
  039a:  f9 cf        rjmp L_038e                    ; -> 0x038e

; ===== digitalRead =====
digitalRead:
  039c:  cf 93        push r28                       
  039e:  df 93        push r29                       
  03a0:  28 2f        mov r18, r24                   
  03a2:  30 e0        ldi r19, 0x00                  
  03a4:  f9 01        movw r31:r30, r19:r18          
  03a6:  ee 58        subi r30, 0x8e                 
  03a8:  ff 4f        sbci r31, 0xff                 
  03aa:  84 91        lpm r24, Z                     
  03ac:  f9 01        movw r31:r30, r19:r18          
  03ae:  ec 53        subi r30, 0x3c                 
  03b0:  ff 4f        sbci r31, 0xff                 
  03b2:  d4 91        lpm r29, Z                     
  03b4:  f9 01        movw r31:r30, r19:r18          
  03b6:  e0 55        subi r30, 0x50                 
  03b8:  ff 4f        sbci r31, 0xff                 
  03ba:  c4 91        lpm r28, Z                     
  03bc:  cc 23        tst r28                        
  03be:  a1 f0        breq L_03e8                    ; -> 0x03e8
  03c0:  81 11        cpse r24, r1                   
  03c2:  0e 94 a5 01  call turnOffPWM                ; -> 0x034a
  03c6:  ec 2f        mov r30, r28                   
  03c8:  f0 e0        ldi r31, 0x00                  
  03ca:  ee 0f        lsl r30                        
  03cc:  ff 1f        rol r31                        
  03ce:  e4 56        subi r30, 0x64                 
  03d0:  ff 4f        sbci r31, 0xff                 
  03d2:  a5 91        lpm r26, Z+                    
  03d4:  b4 91        lpm r27, Z                     
  03d6:  ec 91        ld r30, X                      
  03d8:  ed 23        and r30, r29                   
  03da:  81 e0        ldi r24, 0x01                  
  03dc:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0001 (1)
  03de:  09 f4        brne L_03e2                    ; -> 0x03e2
  03e0:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
L_03e2:
  03e2:  df 91        pop r29                        
  03e4:  cf 91        pop r28                        
  03e6:  08 95        ret                            
L_03e8:
  03e8:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  03ea:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  03ec:  fa cf        rjmp L_03e2                    ; -> 0x03e2

; ===== digitalWrite =====
digitalWrite:
  03ee:  1f 93        push r17                       
  03f0:  cf 93        push r28                       
  03f2:  df 93        push r29                       
  03f4:  28 2f        mov r18, r24                   
  03f6:  30 e0        ldi r19, 0x00                  
  03f8:  f9 01        movw r31:r30, r19:r18          
  03fa:  ee 58        subi r30, 0x8e                 
  03fc:  ff 4f        sbci r31, 0xff                 
  03fe:  84 91        lpm r24, Z                     
  0400:  f9 01        movw r31:r30, r19:r18          
  0402:  ec 53        subi r30, 0x3c                 
  0404:  ff 4f        sbci r31, 0xff                 
  0406:  d4 91        lpm r29, Z                     
  0408:  f9 01        movw r31:r30, r19:r18          
  040a:  e0 55        subi r30, 0x50                 
  040c:  ff 4f        sbci r31, 0xff                 
  040e:  c4 91        lpm r28, Z                     
  0410:  cc 23        tst r28                        
  0412:  a9 f0        breq L_043e                    ; -> 0x043e
  0414:  16 2f        mov r17, r22                   
  0416:  81 11        cpse r24, r1                   
  0418:  0e 94 a5 01  call turnOffPWM                ; -> 0x034a
  041c:  ec 2f        mov r30, r28                   
  041e:  f0 e0        ldi r31, 0x00                  
  0420:  ee 0f        lsl r30                        
  0422:  ff 1f        rol r31                        
  0424:  ea 55        subi r30, 0x5a                 
  0426:  ff 4f        sbci r31, 0xff                 
  0428:  a5 91        lpm r26, Z+                    
  042a:  b4 91        lpm r27, Z                     
  042c:  8f b7        in r24, 0x3f                   ; SREG
  042e:  f8 94        cli                            
  0430:  ec 91        ld r30, X                      
  0432:  11 11        cpse r17, r1                   
  0434:  08 c0        rjmp L_0446                    ; -> 0x0446
  0436:  d0 95        com r29                        
  0438:  de 23        and r29, r30                   
L_043a:
  043a:  dc 93        st X, r29                      
  043c:  8f bf        out 0x3f, r24                  ; SREG
L_043e:
  043e:  df 91        pop r29                        
  0440:  cf 91        pop r28                        
  0442:  1f 91        pop r17                        
  0444:  08 95        ret                            
L_0446:
  0446:  de 2b        or r29, r30                    
  0448:  f8 cf        rjmp L_043a                    ; -> 0x043a

; ===== pinMode =====
pinMode:
  044a:  cf 93        push r28                       
  044c:  df 93        push r29                       
  044e:  90 e0        ldi r25, 0x00                  
  0450:  fc 01        movw r31:r30, r25:r24          
  0452:  ec 53        subi r30, 0x3c                 
  0454:  ff 4f        sbci r31, 0xff                 
  0456:  24 91        lpm r18, Z                     
  0458:  80 55        subi r24, 0x50                 
  045a:  9f 4f        sbci r25, 0xff                 
  045c:  fc 01        movw r31:r30, r25:r24          
  045e:  84 91        lpm r24, Z                     
  0460:  88 23        tst r24                        
  0462:  d1 f0        breq L_0498                    ; -> 0x0498
  0464:  90 e0        ldi r25, 0x00                  
  0466:  88 0f        lsl r24                        
  0468:  99 1f        rol r25                        
  046a:  fc 01        movw r31:r30, r25:r24          
  046c:  e8 59        subi r30, 0x98                 
  046e:  ff 4f        sbci r31, 0xff                 
  0470:  a5 91        lpm r26, Z+                    
  0472:  b4 91        lpm r27, Z                     
  0474:  fc 01        movw r31:r30, r25:r24          
  0476:  ea 55        subi r30, 0x5a                 
  0478:  ff 4f        sbci r31, 0xff                 
  047a:  c5 91        lpm r28, Z+                    
  047c:  d4 91        lpm r29, Z                     
  047e:  61 11        cpse r22, r1                   
  0480:  0e c0        rjmp L_049e                    ; -> 0x049e
  0482:  9f b7        in r25, 0x3f                   ; SREG
  0484:  f8 94        cli                            
  0486:  8c 91        ld r24, X                      
  0488:  e2 2f        mov r30, r18                   
  048a:  e0 95        com r30                        
  048c:  8e 23        and r24, r30                   
  048e:  8c 93        st X, r24                      
  0490:  28 81        ld r18, Y                      
  0492:  e2 23        and r30, r18                   
  0494:  e8 83        st Y, r30                      
  0496:  9f bf        out 0x3f, r25                  ; SREG
L_0498:
  0498:  df 91        pop r29                        
  049a:  cf 91        pop r28                        
  049c:  08 95        ret                            
L_049e:
  049e:  8f b7        in r24, 0x3f                   ; SREG
  04a0:  f8 94        cli                            
  04a2:  ec 91        ld r30, X                      
  04a4:  e2 2b        or r30, r18                    
  04a6:  ec 93        st X, r30                      
  04a8:  8f bf        out 0x3f, r24                  ; SREG
  04aa:  f6 cf        rjmp L_0498                    ; -> 0x0498

; ===== micros =====
micros:
  04ac:  3f b7        in r19, 0x3f                   ; SREG
  04ae:  f8 94        cli                            
  04b0:  80 91 f3 02  lds r24, 0x02f3                ; v_02f3
  04b4:  90 91 f4 02  lds r25, 0x02f4                ; v_02f4
  04b8:  a0 91 f5 02  lds r26, 0x02f5                ; v_02f5
  04bc:  b0 91 f6 02  lds r27, 0x02f6                ; v_02f6
  04c0:  26 b5        in r18, 0x26                   ; TCNT0
  04c2:  a8 9b        sbis 0x15, 0                   ; TIFR0
  04c4:  05 c0        rjmp L_04d0                    ; -> 0x04d0
  04c6:  2f 3f        cpi r18, 0xff                  
  04c8:  19 f0        breq L_04d0                    ; -> 0x04d0
  04ca:  01 96        adiw r25:r24, 1                
  04cc:  a1 1d        adc r26, r1                    
  04ce:  b1 1d        adc r27, r1                    
L_04d0:
  04d0:  3f bf        out 0x3f, r19                  ; SREG
  04d2:  ba 2f        mov r27, r26                   
  04d4:  a9 2f        mov r26, r25                   
  04d6:  98 2f        mov r25, r24                   
  04d8:  88 27        clr r24                        
  04da:  bc 01        movw r23:r22, r25:r24          
  04dc:  cd 01        movw r25:r24, r27:r26          
  04de:  62 0f        add r22, r18                   
  04e0:  71 1d        adc r23, r1                    
  04e2:  81 1d        adc r24, r1                    
  04e4:  91 1d        adc r25, r1                    
  04e6:  42 e0        ldi r20, 0x02                  
L_04e8:
  04e8:  66 0f        lsl r22                        
  04ea:  77 1f        rol r23                        
  04ec:  88 1f        rol r24                        
  04ee:  99 1f        rol r25                        
  04f0:  4a 95        dec r20                        
  04f2:  d1 f7        brne L_04e8                    ; -> 0x04e8
  04f4:  08 95        ret                            

; ===== delay =====
delay:
  04f6:  8f 92        push r8                        
  04f8:  9f 92        push r9                        
  04fa:  af 92        push r10                       
  04fc:  bf 92        push r11                       
  04fe:  cf 92        push r12                       
  0500:  df 92        push r13                       
  0502:  ef 92        push r14                       
  0504:  ff 92        push r15                       
  0506:  6b 01        movw r13:r12, r23:r22          
  0508:  7c 01        movw r15:r14, r25:r24          
  050a:  0e 94 56 02  call micros                    ; -> 0x04ac
  050e:  4b 01        movw r9:r8, r23:r22            
  0510:  5c 01        movw r11:r10, r25:r24          
L_0512:
  0512:  c1 14        cp r12, r1                     
  0514:  d1 04        cpc r13, r1                    
  0516:  e1 04        cpc r14, r1                    
  0518:  f1 04        cpc r15, r1                    
  051a:  b9 f0        breq L_054a                    ; -> 0x054a
  051c:  0e 94 56 02  call micros                    ; -> 0x04ac
  0520:  68 19        sub r22, r8                    
  0522:  79 09        sbc r23, r9                    
  0524:  8a 09        sbc r24, r10                   
  0526:  9b 09        sbc r25, r11                   
  0528:  68 3e        cpi r22, 0xe8                  
  052a:  73 40        sbci r23, 0x03                 
  052c:  81 05        cpc r24, r1                    
  052e:  91 05        cpc r25, r1                    
  0530:  80 f3        brcs L_0512                    ; -> 0x0512
  0532:  21 e0        ldi r18, 0x01                  
  0534:  c2 1a        sub r12, r18                   
  0536:  d1 08        sbc r13, r1                    
  0538:  e1 08        sbc r14, r1                    
  053a:  f1 08        sbc r15, r1                    
  053c:  88 ee        ldi r24, 0xe8                  
  053e:  88 0e        add r8, r24                    
  0540:  83 e0        ldi r24, 0x03                  
  0542:  98 1e        adc r9, r24                    
  0544:  a1 1c        adc r10, r1                    
  0546:  b1 1c        adc r11, r1                    
  0548:  e4 cf        rjmp L_0512                    ; -> 0x0512
L_054a:
  054a:  ff 90        pop r15                        
  054c:  ef 90        pop r14                        
  054e:  df 90        pop r13                        
  0550:  cf 90        pop r12                        
  0552:  bf 90        pop r11                        
  0554:  af 90        pop r10                        
  0556:  9f 90        pop r9                         
  0558:  8f 90        pop r8                         
  055a:  08 95        ret                            

; ===== DFP_readAvailable =====
DFP_readAvailable:
  055c:  80 91 f6 03  lds r24, 0x03f6                ; v_03f6
  0560:  90 91 f7 03  lds r25, 0x03f7                ; v_03f7
  0564:  dc 01        movw r27:r26, r25:r24          
  0566:  ed 91        ld r30, X+                     
  0568:  fc 91        ld r31, X                      
  056a:  00 84        ldd r0, Z+8                    
  056c:  f1 85        ldd r31, Z+9                   
  056e:  e0 2d        mov r30, r0                    
  0570:  09 95        icall                          
  0572:  89 2b        or r24, r25                    
  0574:  09 f4        brne L_0578                    ; -> 0x0578
  0576:  d5 c0        rjmp L_0722                    ; -> 0x0722
L_0578:
  0578:  60 e0        ldi r22, 0x00                  
  057a:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0000 (0)
  057c:  cb 01        movw r25:r24, r23:r22          
  057e:  0e 94 7b 02  call delay                     ; -> 0x04f6
  0582:  20 91 14 04  lds r18, 0x0414                ; v_0414
  0586:  80 91 f6 03  lds r24, 0x03f6                ; v_03f6
  058a:  90 91 f7 03  lds r25, 0x03f7                ; v_03f7
  058e:  dc 01        movw r27:r26, r25:r24          
  0590:  ed 91        ld r30, X+                     
  0592:  fc 91        ld r31, X                      
  0594:  02 84        ldd r0, Z+10                   
  0596:  f3 85        ldd r31, Z+11                  
  0598:  e0 2d        mov r30, r0                    
  059a:  21 11        cpse r18, r1                   
  059c:  0b c0        rjmp L_05b4                    ; -> 0x05b4
  059e:  09 95        icall                          
  05a0:  80 93 00 04  sts 0x0400, r24                ; v_0400
  05a4:  8e 37        cpi r24, 0x7e                  
  05a6:  d1 f6        brne DFP_readAvailable         ; -> 0x055c
  05a8:  80 91 14 04  lds r24, 0x0414                ; v_0414
  05ac:  8f 5f        subi r24, 0xff                 
  05ae:  80 93 14 04  sts 0x0414, r24                ; v_0414
  05b2:  d4 cf        rjmp DFP_readAvailable         ; -> 0x055c
L_05b4:
  05b4:  09 95        icall                          
  05b6:  90 91 14 04  lds r25, 0x0414                ; v_0414
  05ba:  e9 2f        mov r30, r25                   
  05bc:  f0 e0        ldi r31, 0x00                  
  05be:  ea 50        subi r30, 0x0a                 
  05c0:  fc 4f        sbci r31, 0xfc                 
  05c2:  82 87        std Z+10, r24                  
  05c4:  92 30        cpi r25, 0x02                  
  05c6:  a9 f0        breq L_05f2                    ; -> 0x05f2
  05c8:  99 30        cpi r25, 0x09                  
  05ca:  c9 f0        breq L_05fe                    ; -> 0x05fe
  05cc:  91 30        cpi r25, 0x01                  
  05ce:  99 f4        brne L_05f6                    ; -> 0x05f6
  05d0:  8f 3f        cpi r24, 0xff                  
  05d2:  89 f0        breq L_05f6                    ; -> 0x05f6
L_05d4:
  05d4:  10 92 14 04  sts 0x0414, r1                 ; v_0414
  05d8:  81 e0        ldi r24, 0x01                  
  05da:  80 93 16 04  sts 0x0416, r24                ; v_0416
  05de:  10 92 19 04  sts 0x0419, r1                 ; v_0419
  05e2:  10 92 18 04  sts 0x0418, r1                 ; v_0418
L_05e6:
  05e6:  80 93 1a 04  sts 0x041a, r24                ; v_041a
  05ea:  10 92 1b 04  sts 0x041b, r1                 ; v_041b
  05ee:  80 e0        ldi r24, 0x00                  
  05f0:  08 95        ret                            
L_05f2:
  05f2:  86 30        cpi r24, 0x06                  
  05f4:  79 f7        brne L_05d4                    ; -> 0x05d4
L_05f6:
  05f6:  9f 5f        subi r25, 0xff                 
  05f8:  90 93 14 04  sts 0x0414, r25                ; v_0414
  05fc:  af cf        rjmp DFP_readAvailable         ; -> 0x055c
L_05fe:
  05fe:  8f 3e        cpi r24, 0xef                  
  0600:  49 f7        brne L_05d4                    ; -> 0x05d4
  0602:  20 91 02 04  lds r18, 0x0402                ; v_0402
  0606:  80 91 01 04  lds r24, 0x0401                ; v_0401
  060a:  28 0f        add r18, r24                   
  060c:  33 27        clr r19                        
  060e:  33 1f        rol r19                        
  0610:  e0 91 03 04  lds r30, 0x0403                ; v_0403
  0614:  c9 01        movw r25:r24, r19:r18          
  0616:  8e 0f        add r24, r30                   
  0618:  91 1d        adc r25, r1                    
  061a:  20 91 04 04  lds r18, 0x0404                ; v_0404
  061e:  28 0f        add r18, r24                   
  0620:  39 2f        mov r19, r25                   
  0622:  31 1d        adc r19, r1                    
  0624:  40 91 05 04  lds r20, 0x0405                ; v_0405
  0628:  50 e0        ldi r21, 0x00                  
  062a:  24 0f        add r18, r20                   
  062c:  35 1f        adc r19, r21                   
  062e:  80 91 06 04  lds r24, 0x0406                ; v_0406
  0632:  90 e0        ldi r25, 0x00                  
  0634:  60 91 07 04  lds r22, 0x0407                ; v_0407
  0638:  70 e0        ldi r23, 0x00                  
  063a:  76 2f        mov r23, r22                   
  063c:  66 27        clr r22                        
  063e:  f0 91 08 04  lds r31, 0x0408                ; v_0408
  0642:  6f 0f        add r22, r31                   
  0644:  71 1d        adc r23, r1                    
  0646:  28 0f        add r18, r24                   
  0648:  39 1f        adc r19, r25                   
  064a:  31 95        neg r19                        
  064c:  21 95        neg r18                        
  064e:  31 09        sbc r19, r1                    
  0650:  62 17        cp r22, r18                    
  0652:  73 07        cpc r23, r19                   
  0654:  09 f0        breq L_0658                    ; -> 0x0658
  0656:  be cf        rjmp L_05d4                    ; -> 0x05d4
L_0658:
  0658:  10 92 14 04  sts 0x0414, r1                 ; v_0414
  065c:  e1 34        cpi r30, 0x41                  
  065e:  19 f4        brne L_0666                    ; -> 0x0666
L_0660:
  0660:  10 92 1b 04  sts 0x041b, r1                 ; v_041b
  0664:  2f c0        rjmp L_06c4                    ; -> 0x06c4
L_0666:
  0666:  e0 93 17 04  sts 0x0417, r30                ; v_0417
  066a:  54 2f        mov r21, r20                   
  066c:  44 27        clr r20                        
  066e:  84 0f        add r24, r20                   
  0670:  95 1f        adc r25, r21                   
  0672:  90 93 19 04  sts 0x0419, r25                ; v_0419
  0676:  80 93 18 04  sts 0x0418, r24                ; v_0418
  067a:  ea 53        subi r30, 0x3a                 
  067c:  e6 31        cpi r30, 0x16                  
  067e:  08 f0        brcs L_0682                    ; -> 0x0682
  0680:  46 c0        rjmp L_070e                    ; -> 0x070e
L_0682:
  0682:  f0 e0        ldi r31, 0x00                  
  0684:  ea 5b        subi r30, 0xba                 
  0686:  fc 4f        sbci r31, 0xfc                 
  0688:  0c 94 ae 1d  jmp ctor_call                  ; -> 0x3b5c
  068c:  73 03        mulsu r23, r19                 
  068e:  7b 03        fmul r23, r19                  
  0690:  85 03        fmuls r16, r21                 
  0692:  5c 03        fmul r21, r20                  
  0694:  85 03        fmuls r16, r21                 
  0696:  65 03        mulsu r22, r21                 
  0698:  83 03        fmuls r16, r19                 
  069a:  87 03        fmuls r16, r23                 
  069c:  85 03        fmuls r16, r21                 
  069e:  85 03        fmuls r16, r21                 
  06a0:  85 03        fmuls r16, r21                 
  06a2:  85 03        fmuls r16, r21                 
  06a4:  85 03        fmuls r16, r21                 
  06a6:  85 03        fmuls r16, r21                 
  06a8:  85 03        fmuls r16, r21                 
  06aa:  85 03        fmuls r16, r21                 
  06ac:  87 03        fmuls r16, r23                 
  06ae:  85 03        fmuls r16, r21                 
  06b0:  85 03        fmuls r16, r21                 
  06b2:  85 03        fmuls r16, r21                 
  06b4:  85 03        fmuls r16, r21                 
  06b6:  85 03        fmuls r16, r21                 
  06b8:  85 e0        ldi r24, 0x05                  
L_06ba:
  06ba:  80 93 16 04  sts 0x0416, r24                ; v_0416
  06be:  81 e0        ldi r24, 0x01                  
  06c0:  80 93 1a 04  sts 0x041a, r24                ; v_041a
L_06c4:
  06c4:  80 91 1a 04  lds r24, 0x041a                ; v_041a
  06c8:  08 95        ret                            
  06ca:  80 ff        sbrs r24, 0                    
  06cc:  02 c0        rjmp L_06d2                    ; -> 0x06d2
  06ce:  89 e0        ldi r24, 0x09                  
  06d0:  f4 cf        rjmp L_06ba                    ; -> 0x06ba
L_06d2:
  06d2:  81 ff        sbrs r24, 1                    
  06d4:  02 c0        rjmp L_06da                    ; -> 0x06da
  06d6:  84 e0        ldi r24, 0x04                  
  06d8:  f0 cf        rjmp L_06ba                    ; -> 0x06ba
L_06da:
  06da:  83 70        andi r24, 0x03                 
  06dc:  99 27        clr r25                        
  06de:  89 2b        or r24, r25                    
  06e0:  89 f3        breq L_06c4                    ; -> 0x06c4
  06e2:  8a e0        ldi r24, 0x0a                  
  06e4:  ea cf        rjmp L_06ba                    ; -> 0x06ba
  06e6:  80 ff        sbrs r24, 0                    
  06e8:  02 c0        rjmp L_06ee                    ; -> 0x06ee
  06ea:  87 e0        ldi r24, 0x07                  
  06ec:  e6 cf        rjmp L_06ba                    ; -> 0x06ba
L_06ee:
  06ee:  81 ff        sbrs r24, 1                    
  06f0:  e9 cf        rjmp L_06c4                    ; -> 0x06c4
  06f2:  82 e0        ldi r24, 0x02                  
  06f4:  e2 cf        rjmp L_06ba                    ; -> 0x06ba
  06f6:  80 ff        sbrs r24, 0                    
  06f8:  02 c0        rjmp L_06fe                    ; -> 0x06fe
  06fa:  88 e0        ldi r24, 0x08                  
  06fc:  de cf        rjmp L_06ba                    ; -> 0x06ba
L_06fe:
  06fe:  81 ff        sbrs r24, 1                    
  0700:  e1 cf        rjmp L_06c4                    ; -> 0x06c4
  0702:  83 e0        ldi r24, 0x03                  
  0704:  da cf        rjmp L_06ba                    ; -> 0x06ba
  0706:  86 e0        ldi r24, 0x06                  
  0708:  d8 cf        rjmp L_06ba                    ; -> 0x06ba
  070a:  8b e0        ldi r24, 0x0b                  
  070c:  d6 cf        rjmp L_06ba                    ; -> 0x06ba
L_070e:
  070e:  81 e0        ldi r24, 0x01                  
  0710:  80 93 16 04  sts 0x0416, r24                ; v_0416
  0714:  10 92 19 04  sts 0x0419, r1                 ; v_0419
  0718:  10 92 18 04  sts 0x0418, r1                 ; v_0418
  071c:  80 93 1a 04  sts 0x041a, r24                ; v_041a
  0720:  9f cf        rjmp L_0660                    ; -> 0x0660
L_0722:
  0722:  80 91 1b 04  lds r24, 0x041b                ; v_041b
  0726:  88 23        tst r24                        
  0728:  69 f2        breq L_06c4                    ; -> 0x06c4
  072a:  2f b7        in r18, 0x3f                   ; SREG
  072c:  f8 94        cli                            
  072e:  80 91 fd 02  lds r24, 0x02fd                ; timer0_millis
  0732:  90 91 fe 02  lds r25, 0x02fe                ; v_02fe
  0736:  a0 91 ff 02  lds r26, 0x02ff                ; v_02ff
  073a:  b0 91 00 03  lds r27, 0x0300                ; v_0300
  073e:  2f bf        out 0x3f, r18                  ; SREG
  0740:  40 91 f8 03  lds r20, 0x03f8                ; v_03f8
  0744:  50 91 f9 03  lds r21, 0x03f9                ; v_03f9
  0748:  60 91 fa 03  lds r22, 0x03fa                ; v_03fa
  074c:  70 91 fb 03  lds r23, 0x03fb                ; v_03fb
  0750:  84 1b        sub r24, r20                   
  0752:  95 0b        sbc r25, r21                   
  0754:  a6 0b        sbc r26, r22                   
  0756:  b7 0b        sbc r27, r23                   
  0758:  40 91 fc 03  lds r20, 0x03fc                ; v_03fc
  075c:  50 91 fd 03  lds r21, 0x03fd                ; v_03fd
  0760:  60 91 fe 03  lds r22, 0x03fe                ; v_03fe
  0764:  70 91 ff 03  lds r23, 0x03ff                ; v_03ff
  0768:  84 17        cp r24, r20                    
  076a:  95 07        cpc r25, r21                   
  076c:  a6 07        cpc r26, r22                   
  076e:  b7 07        cpc r27, r23                   
  0770:  08 f4        brcc L_0774                    ; -> 0x0774
  0772:  a8 cf        rjmp L_06c4                    ; -> 0x06c4
L_0774:
  0774:  10 92 14 04  sts 0x0414, r1                 ; v_0414
  0778:  10 92 16 04  sts 0x0416, r1                 ; v_0416
  077c:  10 92 19 04  sts 0x0419, r1                 ; v_0419
  0780:  10 92 18 04  sts 0x0418, r1                 ; v_0418
  0784:  81 e0        ldi r24, 0x01                  
  0786:  2f cf        rjmp L_05e6                    ; -> 0x05e6

; ===== DFP_sendStack =====
DFP_sendStack:
  0788:  80 93 0d 04  sts 0x040d, r24                ; v_040d
  078c:  27 2f        mov r18, r23                   
  078e:  30 e0        ldi r19, 0x00                  
  0790:  70 93 0f 04  sts 0x040f, r23                ; v_040f
  0794:  60 93 10 04  sts 0x0410, r22                ; v_0410
  0798:  40 91 0c 04  lds r20, 0x040c                ; v_040c
  079c:  90 91 0b 04  lds r25, 0x040b                ; v_040b
  07a0:  49 0f        add r20, r25                   
  07a2:  55 27        clr r21                        
  07a4:  55 1f        rol r21                        
  07a6:  84 0f        add r24, r20                   
  07a8:  95 2f        mov r25, r21                   
  07aa:  91 1d        adc r25, r1                    
  07ac:  40 91 0e 04  lds r20, 0x040e                ; v_040e
  07b0:  84 0f        add r24, r20                   
  07b2:  91 1d        adc r25, r1                    
  07b4:  82 0f        add r24, r18                   
  07b6:  93 1f        adc r25, r19                   
  07b8:  68 0f        add r22, r24                   
  07ba:  79 2f        mov r23, r25                   
  07bc:  71 1d        adc r23, r1                    
  07be:  71 95        neg r23                        
  07c0:  61 95        neg r22                        
  07c2:  71 09        sbc r23, r1                    
  07c4:  70 93 11 04  sts 0x0411, r23                ; v_0411
  07c8:  60 93 12 04  sts 0x0412, r22                ; v_0412
  07cc:  44 23        tst r20                        
  07ce:  61 f0        breq L_07e8                    ; -> 0x07e8
L_07d0:
  07d0:  80 91 1b 04  lds r24, 0x041b                ; v_041b
  07d4:  88 23        tst r24                        
  07d6:  41 f0        breq L_07e8                    ; -> 0x07e8
  07d8:  60 e0        ldi r22, 0x00                  
  07da:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0000 (0)
  07dc:  cb 01        movw r25:r24, r23:r22          
  07de:  0e 94 7b 02  call delay                     ; -> 0x04f6
  07e2:  0e 94 ae 02  call DFP_readAvailable         ; -> 0x055c
  07e6:  f4 cf        rjmp L_07d0                    ; -> 0x07d0
L_07e8:
  07e8:  80 91 f6 03  lds r24, 0x03f6                ; v_03f6
  07ec:  90 91 f7 03  lds r25, 0x03f7                ; v_03f7
  07f0:  dc 01        movw r27:r26, r25:r24          
  07f2:  ed 91        ld r30, X+                     
  07f4:  fc 91        ld r31, X                      
  07f6:  02 80        ldd r0, Z+2                    
  07f8:  f3 81        ldd r31, Z+3                   
  07fa:  e0 2d        mov r30, r0                    
  07fc:  4a e0        ldi r20, 0x0a                  
  07fe:  50 e0        ldi r21, 0x00                  ; r21:r20 = 0x000a (10)
  0800:  6a e0        ldi r22, 0x0a                  
  0802:  74 e0        ldi r23, 0x04                  ; r23:r22 = 0x040a (1034)
  0804:  09 95        icall                          
  0806:  2f b7        in r18, 0x3f                   ; SREG
  0808:  f8 94        cli                            
  080a:  80 91 fd 02  lds r24, 0x02fd                ; timer0_millis
  080e:  90 91 fe 02  lds r25, 0x02fe                ; v_02fe
  0812:  a0 91 ff 02  lds r26, 0x02ff                ; v_02ff
  0816:  b0 91 00 03  lds r27, 0x0300                ; v_0300
  081a:  2f bf        out 0x3f, r18                  ; SREG
  081c:  80 93 f8 03  sts 0x03f8, r24                ; v_03f8
  0820:  90 93 f9 03  sts 0x03f9, r25                ; v_03f9
  0824:  a0 93 fa 03  sts 0x03fa, r26                ; v_03fa
  0828:  b0 93 fb 03  sts 0x03fb, r27                ; v_03fb
  082c:  80 91 0e 04  lds r24, 0x040e                ; v_040e
  0830:  91 e0        ldi r25, 0x01                  
  0832:  81 11        cpse r24, r1                   
  0834:  01 c0        rjmp L_0838                    ; -> 0x0838
  0836:  90 e0        ldi r25, 0x00                  
L_0838:
  0838:  90 93 1b 04  sts 0x041b, r25                ; v_041b
  083c:  81 11        cpse r24, r1                   
  083e:  06 c0        rjmp L_084c                    ; -> 0x084c
  0840:  6a e0        ldi r22, 0x0a                  
  0842:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x000a (10)
  0844:  80 e0        ldi r24, 0x00                  
  0846:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  0848:  0c 94 7b 02  jmp delay                      ; -> 0x04f6
L_084c:
  084c:  08 95        ret                            
  084e:  20 91 f9 02  lds r18, 0x02f9                ; v_02f9
  0852:  30 91 fa 02  lds r19, 0x02fa                ; v_02fa
  0856:  28 17        cp r18, r24                    
  0858:  39 07        cpc r19, r25                   
  085a:  71 f4        brne L_0878                    ; -> 0x0878
  085c:  90 91 f7 02  lds r25, 0x02f7                ; v_02f7
  0860:  80 91 f8 02  lds r24, 0x02f8                ; v_02f8
  0864:  98 17        cp r25, r24                    
  0866:  41 f0        breq L_0878                    ; -> 0x0878
  0868:  e0 91 f7 02  lds r30, 0x02f7                ; v_02f7
  086c:  f0 e0        ldi r31, 0x00                  
  086e:  ee 54        subi r30, 0x4e                 
  0870:  fd 4f        sbci r31, 0xfd                 
  0872:  80 81        ld r24, Z                      
  0874:  90 e0        ldi r25, 0x00                  
  0876:  08 95        ret                            
L_0878:
  0878:  8f ef        ldi r24, 0xff                  ; r25:r24 = 0x00ff (255)
  087a:  9f ef        ldi r25, 0xff                  ; r25:r24 = 0xffff (65535)
  087c:  08 95        ret                            
  087e:  08 95        ret                            
  0880:  ef 92        push r14                       
  0882:  ff 92        push r15                       
  0884:  0f 93        push r16                       
  0886:  1f 93        push r17                       
  0888:  cf 93        push r28                       
  088a:  df 93        push r29                       
  088c:  dc 01        movw r27:r26, r25:r24          
  088e:  5c 96        adiw r27:r26, 28               
  0890:  ed 90        ld r14, X+                     
  0892:  fc 90        ld r15, X                      
  0894:  5d 97        sbiw r27:r26, 29               
  0896:  e1 14        cp r14, r1                     
  0898:  f1 04        cpc r15, r1                    
  089a:  79 f4        brne L_08ba                    ; -> 0x08ba
  089c:  81 e0        ldi r24, 0x01                  
  089e:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0001 (1)
  08a0:  13 96        adiw r27:r26, 3                
  08a2:  9c 93        st X, r25                      
  08a4:  8e 93        st -X, r24                     
  08a6:  12 97        sbiw r27:r26, 2                
  08a8:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0001 (1)
  08aa:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
L_08ac:
  08ac:  df 91        pop r29                        
  08ae:  cf 91        pop r28                        
  08b0:  1f 91        pop r17                        
  08b2:  0f 91        pop r16                        
  08b4:  ff 90        pop r15                        
  08b6:  ef 90        pop r14                        
  08b8:  08 95        ret                            
L_08ba:
  08ba:  51 96        adiw r27:r26, 17               
  08bc:  ed 91        ld r30, X+                     
  08be:  fc 91        ld r31, X                      
  08c0:  52 97        sbiw r27:r26, 18               
  08c2:  50 96        adiw r27:r26, 16               
  08c4:  8c 91        ld r24, X                      
  08c6:  50 97        sbiw r27:r26, 16               
  08c8:  98 2f        mov r25, r24                   
  08ca:  90 95        com r25                        
  08cc:  0f b7        in r16, 0x3f                   ; SREG
  08ce:  5e 96        adiw r27:r26, 30               
  08d0:  2c 91        ld r18, X                      
  08d2:  5e 97        sbiw r27:r26, 30               
  08d4:  12 2f        mov r17, r18                   
  08d6:  12 70        andi r17, 0x02                 
  08d8:  21 fd        sbrc r18, 1                    
  08da:  60 95        com r22                        
  08dc:  f8 94        cli                            
  08de:  20 81        ld r18, Z                      
  08e0:  11 23        tst r17                        
  08e2:  19 f1        breq L_092a                    ; -> 0x092a
  08e4:  28 2b        or r18, r24                    
L_08e6:
  08e6:  20 83        st Z, r18                      
  08e8:  e7 01        movw r29:r28, r15:r14          
L_08ea:
  08ea:  21 97        sbiw r29:r28, 1                
  08ec:  f1 f7        brne L_08ea                    ; -> 0x08ea
  08ee:  28 e0        ldi r18, 0x08                  
L_08f0:
  08f0:  46 2f        mov r20, r22                   
  08f2:  50 e0        ldi r21, 0x00                  
  08f4:  30 81        ld r19, Z                      
  08f6:  60 ff        sbrs r22, 0                    
  08f8:  1a c0        rjmp L_092e                    ; -> 0x092e
  08fa:  38 2b        or r19, r24                    
L_08fc:
  08fc:  30 83        st Z, r19                      
  08fe:  e7 01        movw r29:r28, r15:r14          
L_0900:
  0900:  21 97        sbiw r29:r28, 1                
  0902:  f1 f7        brne L_0900                    ; -> 0x0900
  0904:  ba 01        movw r23:r22, r21:r20          
  0906:  75 95        asr r23                        
  0908:  67 95        ror r22                        
  090a:  21 50        subi r18, 0x01                 
  090c:  89 f7        brne L_08f0                    ; -> 0x08f0
  090e:  11 23        tst r17                        
  0910:  81 f0        breq L_0932                    ; -> 0x0932
  0912:  80 81        ld r24, Z                      
  0914:  89 23        and r24, r25                   
L_0916:
  0916:  80 83        st Z, r24                      
  0918:  0f bf        out 0x3f, r16                  ; SREG
  091a:  5c 96        adiw r27:r26, 28               
  091c:  8d 91        ld r24, X+                     
  091e:  9c 91        ld r25, X                      
L_0920:
  0920:  01 97        sbiw r25:r24, 1                
  0922:  f1 f7        brne L_0920                    ; -> 0x0920
  0924:  81 e0        ldi r24, 0x01                  
  0926:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0001 (1)
  0928:  c1 cf        rjmp L_08ac                    ; -> 0x08ac
L_092a:
  092a:  29 23        and r18, r25                   
  092c:  dc cf        rjmp L_08e6                    ; -> 0x08e6
L_092e:
  092e:  39 23        and r19, r25                   
  0930:  e5 cf        rjmp L_08fc                    ; -> 0x08fc
L_0932:
  0932:  90 81        ld r25, Z                      
  0934:  89 2b        or r24, r25                    
  0936:  ef cf        rjmp L_0916                    ; -> 0x0916
  0938:  20 91 f9 02  lds r18, 0x02f9                ; v_02f9
  093c:  30 91 fa 02  lds r19, 0x02fa                ; v_02fa
  0940:  28 17        cp r18, r24                    
  0942:  39 07        cpc r19, r25                   
  0944:  61 f4        brne L_095e                    ; -> 0x095e
  0946:  80 91 f8 02  lds r24, 0x02f8                ; v_02f8
  094a:  20 91 f7 02  lds r18, 0x02f7                ; v_02f7
  094e:  90 e0        ldi r25, 0x00                  
  0950:  80 5c        subi r24, 0xc0                 
  0952:  9f 4f        sbci r25, 0xff                 
  0954:  82 1b        sub r24, r18                   
  0956:  91 09        sbc r25, r1                    
  0958:  8f 73        andi r24, 0x3f                 
  095a:  99 27        clr r25                        
  095c:  08 95        ret                            
L_095e:
  095e:  90 e0        ldi r25, 0x00                  
  0960:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  0962:  08 95        ret                            
  0964:  20 91 f9 02  lds r18, 0x02f9                ; v_02f9
  0968:  30 91 fa 02  lds r19, 0x02fa                ; v_02fa
  096c:  28 17        cp r18, r24                    
  096e:  39 07        cpc r19, r25                   
  0970:  b9 f4        brne L_09a0                    ; -> 0x09a0
  0972:  90 91 f7 02  lds r25, 0x02f7                ; v_02f7
  0976:  80 91 f8 02  lds r24, 0x02f8                ; v_02f8
  097a:  98 17        cp r25, r24                    
  097c:  89 f0        breq L_09a0                    ; -> 0x09a0
  097e:  e0 91 f7 02  lds r30, 0x02f7                ; v_02f7
  0982:  f0 e0        ldi r31, 0x00                  
  0984:  ee 54        subi r30, 0x4e                 
  0986:  fd 4f        sbci r31, 0xfd                 
  0988:  80 81        ld r24, Z                      
  098a:  20 91 f7 02  lds r18, 0x02f7                ; v_02f7
  098e:  30 e0        ldi r19, 0x00                  
  0990:  2f 5f        subi r18, 0xff                 
  0992:  3f 4f        sbci r19, 0xff                 
  0994:  2f 73        andi r18, 0x3f                 
  0996:  33 27        clr r19                        
  0998:  20 93 f7 02  sts 0x02f7, r18                ; v_02f7
  099c:  90 e0        ldi r25, 0x00                  
  099e:  08 95        ret                            
L_09a0:
  09a0:  8f ef        ldi r24, 0xff                  ; r25:r24 = 0x00ff (255)
  09a2:  9f ef        ldi r25, 0xff                  ; r25:r24 = 0xffff (65535)
  09a4:  08 95        ret                            
  09a6:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x00ff (255)
  09a8:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  09aa:  08 95        ret                            

; ===== NeoPixel_setPixelColor =====
NeoPixel_setPixelColor:
  09ac:  8f 92        push r8                        
  09ae:  9f 92        push r9                        
  09b0:  af 92        push r10                       
  09b2:  bf 92        push r11                       
  09b4:  cf 92        push r12                       
  09b6:  df 92        push r13                       
  09b8:  ef 92        push r14                       
  09ba:  ff 92        push r15                       
  09bc:  cf 93        push r28                       
  09be:  df 93        push r29                       
  09c0:  fc 01        movw r31:r30, r25:r24          
  09c2:  82 81        ldd r24, Z+2                   
  09c4:  93 81        ldd r25, Z+3                   
  09c6:  68 17        cp r22, r24                    
  09c8:  79 07        cpc r23, r25                   
  09ca:  d8 f5        brcc L_0a42                    ; -> 0x0a42
  09cc:  4a 01        movw r9:r8, r21:r20            
  09ce:  aa 24        clr r10                        
  09d0:  bb 24        clr r11                        
  09d2:  c3 2e        mov r12, r19                   
  09d4:  d4 2e        mov r13, r20                   
  09d6:  e5 2e        mov r14, r21                   
  09d8:  ff 24        clr r15                        
  09da:  dc 2d        mov r29, r12                   
  09dc:  c2 2f        mov r28, r18                   
  09de:  80 85        ldd r24, Z+8                   
  09e0:  98 2d        mov r25, r8                    
  09e2:  88 23        tst r24                        
  09e4:  91 f0        breq L_0a0a                    ; -> 0x0a0a
  09e6:  c8 2f        mov r28, r24                   
  09e8:  d0 e0        ldi r29, 0x00                  
  09ea:  c8 9d        mul r28, r8                    
  09ec:  d0 01        movw r27:r26, r1:r0            
  09ee:  c9 9d        mul r28, r9                    
  09f0:  b0 0d        add r27, r0                    
  09f2:  d8 9d        mul r29, r8                    
  09f4:  b0 0d        add r27, r0                    
  09f6:  11 24        clr r1                         
  09f8:  9b 2f        mov r25, r27                   
  09fa:  8c 9d        mul r24, r12                   
  09fc:  60 01        movw r13:r12, r1:r0            
  09fe:  11 24        clr r1                         
  0a00:  dd 2d        mov r29, r13                   
  0a02:  82 9f        mul r24, r18                   
  0a04:  90 01        movw r19:r18, r1:r0            
  0a06:  11 24        clr r1                         
  0a08:  c3 2f        mov r28, r19                   
L_0a0a:
  0a0a:  a6 85        ldd r26, Z+14                  
  0a0c:  21 85        ldd r18, Z+9                   
  0a0e:  32 85        ldd r19, Z+10                  
  0a10:  83 85        ldd r24, Z+11                  
  0a12:  a8 13        cpse r26, r24                  
  0a14:  21 c0        rjmp L_0a58                    ; -> 0x0a58
  0a16:  ab 01        movw r21:r20, r23:r22          
  0a18:  44 0f        lsl r20                        
  0a1a:  55 1f        rol r21                        
  0a1c:  64 0f        add r22, r20                   
  0a1e:  75 1f        adc r23, r21                   
  0a20:  62 0f        add r22, r18                   
  0a22:  73 1f        adc r23, r19                   
L_0a24:
  0a24:  a3 85        ldd r26, Z+11                  
  0a26:  a6 0f        add r26, r22                   
  0a28:  b7 2f        mov r27, r23                   
  0a2a:  b1 1d        adc r27, r1                    
  0a2c:  9c 93        st X, r25                      
  0a2e:  a4 85        ldd r26, Z+12                  
  0a30:  a6 0f        add r26, r22                   
  0a32:  b7 2f        mov r27, r23                   
  0a34:  b1 1d        adc r27, r1                    
  0a36:  dc 93        st X, r29                      
  0a38:  85 85        ldd r24, Z+13                  
  0a3a:  68 0f        add r22, r24                   
  0a3c:  71 1d        adc r23, r1                    
  0a3e:  fb 01        movw r31:r30, r23:r22          
  0a40:  c0 83        st Z, r28                      
L_0a42:
  0a42:  df 91        pop r29                        
  0a44:  cf 91        pop r28                        
  0a46:  ff 90        pop r15                        
  0a48:  ef 90        pop r14                        
  0a4a:  df 90        pop r13                        
  0a4c:  cf 90        pop r12                        
  0a4e:  bf 90        pop r11                        
  0a50:  af 90        pop r10                        
  0a52:  9f 90        pop r9                         
  0a54:  8f 90        pop r8                         
  0a56:  08 95        ret                            
L_0a58:
  0a58:  66 0f        lsl r22                        
  0a5a:  77 1f        rol r23                        
  0a5c:  66 0f        lsl r22                        
  0a5e:  77 1f        rol r23                        
  0a60:  62 0f        add r22, r18                   
  0a62:  73 1f        adc r23, r19                   
  0a64:  a6 0f        add r26, r22                   
  0a66:  b7 2f        mov r27, r23                   
  0a68:  b1 1d        adc r27, r1                    
  0a6a:  1c 92        st X, r1                       
  0a6c:  db cf        rjmp L_0a24                    ; -> 0x0a24

; ===== NeoPixel_show =====
NeoPixel_show:
  0a6e:  cf 92        push r12                       
  0a70:  df 92        push r13                       
  0a72:  ef 92        push r14                       
  0a74:  ff 92        push r15                       
  0a76:  0f 93        push r16                       
  0a78:  1f 93        push r17                       
  0a7a:  cf 93        push r28                       
  0a7c:  df 93        push r29                       
  0a7e:  cd b7        in r28, 0x3d                   ; SPL
  0a80:  de b7        in r29, 0x3e                   ; SPH
  0a82:  29 97        sbiw r29:r28, 9                
  0a84:  0f b6        in r0, 0x3f                    ; SREG
  0a86:  f8 94        cli                            
  0a88:  de bf        out 0x3e, r29                  ; SPH
  0a8a:  0f be        out 0x3f, r0                   ; SREG
  0a8c:  cd bf        out 0x3d, r28                  ; SPL
  0a8e:  8c 01        movw r17:r16, r25:r24          
  0a90:  dc 01        movw r27:r26, r25:r24          
  0a92:  19 96        adiw r27:r26, 9                
  0a94:  8d 91        ld r24, X+                     
  0a96:  9c 91        ld r25, X                      
  0a98:  89 2b        or r24, r25                    
  0a9a:  09 f4        brne L_0a9e                    ; -> 0x0a9e
  0a9c:  73 c0        rjmp L_0b84                    ; -> 0x0b84
L_0a9e:
  0a9e:  0e 94 56 02  call micros                    ; -> 0x04ac
  0aa2:  f8 01        movw r31:r30, r17:r16          
  0aa4:  c7 84        ldd r12, Z+15                  
  0aa6:  d0 88        ldd r13, Z+16                  
  0aa8:  e1 88        ldd r14, Z+17                  
  0aaa:  f2 88        ldd r15, Z+18                  
  0aac:  6c 15        cp r22, r12                    
  0aae:  7d 05        cpc r23, r13                   
  0ab0:  8e 05        cpc r24, r14                   
  0ab2:  9f 05        cpc r25, r15                   
  0ab4:  20 f4        brcc L_0abe                    ; -> 0x0abe
  0ab6:  67 87        std Z+15, r22                  
  0ab8:  70 8b        std Z+16, r23                  
  0aba:  81 8b        std Z+17, r24                  
  0abc:  92 8b        std Z+18, r25                  
L_0abe:
  0abe:  f8 01        movw r31:r30, r17:r16          
  0ac0:  c7 84        ldd r12, Z+15                  
  0ac2:  d0 88        ldd r13, Z+16                  
  0ac4:  e1 88        ldd r14, Z+17                  
  0ac6:  f2 88        ldd r15, Z+18                  
  0ac8:  6c 19        sub r22, r12                   
  0aca:  7d 09        sbc r23, r13                   
  0acc:  8e 09        sbc r24, r14                   
  0ace:  9f 09        sbc r25, r15                   
  0ad0:  6c 32        cpi r22, 0x2c                  
  0ad2:  71 40        sbci r23, 0x01                 
  0ad4:  81 05        cpc r24, r1                    
  0ad6:  91 05        cpc r25, r1                    
  0ad8:  10 f3        brcs L_0a9e                    ; -> 0x0a9e
  0ada:  f8 94        cli                            
  0adc:  d8 01        movw r27:r26, r17:r16          
  0ade:  14 96        adiw r27:r26, 4                
  0ae0:  8d 91        ld r24, X+                     
  0ae2:  9c 91        ld r25, X                      
  0ae4:  15 97        sbiw r27:r26, 5                
  0ae6:  9a 83        std Y+2, r25                   
  0ae8:  89 83        std Y+1, r24                   
  0aea:  19 96        adiw r27:r26, 9                
  0aec:  ed 91        ld r30, X+                     
  0aee:  fc 91        ld r31, X                      
  0af0:  7f 01        movw r15:r14, r31:r30          
  0af2:  bf ef        ldi r27, 0xff                  
  0af4:  eb 1a        sub r14, r27                   
  0af6:  fb 0a        sbc r15, r27                   
  0af8:  80 81        ld r24, Z                      
  0afa:  89 87        std Y+9, r24                   
  0afc:  f8 01        movw r31:r30, r17:r16          
  0afe:  90 81        ld r25, Z                      
  0b00:  03 88        ldd r0, Z+19                   
  0b02:  f4 89        ldd r31, Z+20                  
  0b04:  e0 2d        mov r30, r0                    
  0b06:  d8 01        movw r27:r26, r17:r16          
  0b08:  55 96        adiw r27:r26, 21               
  0b0a:  8c 91        ld r24, X                      
  0b0c:  99 23        tst r25                        
  0b0e:  09 f4        brne L_0b12                    ; -> 0x0b12
  0b10:  48 c0        rjmp L_0ba2                    ; -> 0x0ba2
L_0b12:
  0b12:  90 81        ld r25, Z                      
  0b14:  98 2b        or r25, r24                    
  0b16:  98 87        std Y+8, r25                   
  0b18:  90 81        ld r25, Z                      
  0b1a:  80 95        com r24                        
  0b1c:  89 23        and r24, r25                   
  0b1e:  8f 83        std Y+7, r24                   
  0b20:  8f 81        ldd r24, Y+7                   
  0b22:  8c 83        std Y+4, r24                   
  0b24:  88 e0        ldi r24, 0x08                  
  0b26:  8b 83        std Y+3, r24                   
  0b28:  58 85        ldd r21, Y+8                   
  0b2a:  6f 81        ldd r22, Y+7                   
  0b2c:  49 85        ldd r20, Y+9                   
  0b2e:  3b 81        ldd r19, Y+3                   
  0b30:  2c 81        ldd r18, Y+4                   
  0b32:  89 81        ldd r24, Y+1                   
  0b34:  9a 81        ldd r25, Y+2                   
  0b36:  d7 01        movw r27:r26, r15:r14          
L_0b38:
  0b38:  50 83        st Z, r21                      
  0b3a:  47 fd        sbrc r20, 7                    
  0b3c:  25 2f        mov r18, r21                   
  0b3e:  3a 95        dec r19                        
  0b40:  20 83        st Z, r18                      
  0b42:  26 2f        mov r18, r22                   
  0b44:  39 f0        breq L_0b54                    ; -> 0x0b54
  0b46:  44 1f        rol r20                        
  0b48:  00 c0        rjmp L_0b4a                    ; -> 0x0b4a
L_0b4a:
  0b4a:  00 00        nop                            
  0b4c:  60 83        st Z, r22                      
  0b4e:  00 00        nop                            
  0b50:  00 c0        rjmp L_0b52                    ; -> 0x0b52
L_0b52:
  0b52:  f2 cf        rjmp L_0b38                    ; -> 0x0b38
L_0b54:
  0b54:  38 e0        ldi r19, 0x08                  
  0b56:  4d 91        ld r20, X+                     
  0b58:  60 83        st Z, r22                      
  0b5a:  00 00        nop                            
  0b5c:  01 97        sbiw r25:r24, 1                
  0b5e:  61 f7        brne L_0b38                    ; -> 0x0b38
  0b60:  d8 01        movw r27:r26, r17:r16          
  0b62:  54 96        adiw r27:r26, 20               
  0b64:  fc 93        st X, r31                      
  0b66:  ee 93        st -X, r30                     
  0b68:  53 97        sbiw r27:r26, 19               
  0b6a:  49 87        std Y+9, r20                   
  0b6c:  3b 83        std Y+3, r19                   
  0b6e:  2c 83        std Y+4, r18                   
L_0b70:
  0b70:  9a 83        std Y+2, r25                   
  0b72:  89 83        std Y+1, r24                   
  0b74:  78 94        sei                            
  0b76:  0e 94 56 02  call micros                    ; -> 0x04ac
  0b7a:  f8 01        movw r31:r30, r17:r16          
  0b7c:  67 87        std Z+15, r22                  
  0b7e:  70 8b        std Z+16, r23                  
  0b80:  81 8b        std Z+17, r24                  
  0b82:  92 8b        std Z+18, r25                  
L_0b84:
  0b84:  29 96        adiw r29:r28, 9                
  0b86:  0f b6        in r0, 0x3f                    ; SREG
  0b88:  f8 94        cli                            
  0b8a:  de bf        out 0x3e, r29                  ; SPH
  0b8c:  0f be        out 0x3f, r0                   ; SREG
  0b8e:  cd bf        out 0x3d, r28                  ; SPL
  0b90:  df 91        pop r29                        
  0b92:  cf 91        pop r28                        
  0b94:  1f 91        pop r17                        
  0b96:  0f 91        pop r16                        
  0b98:  ff 90        pop r15                        
  0b9a:  ef 90        pop r14                        
  0b9c:  df 90        pop r13                        
  0b9e:  cf 90        pop r12                        
  0ba0:  08 95        ret                            
L_0ba2:
  0ba2:  90 81        ld r25, Z                      
  0ba4:  98 2b        or r25, r24                    
  0ba6:  98 87        std Y+8, r25                   
  0ba8:  90 81        ld r25, Z                      
  0baa:  80 95        com r24                        
  0bac:  89 23        and r24, r25                   
  0bae:  8f 83        std Y+7, r24                   
  0bb0:  8f 81        ldd r24, Y+7                   
  0bb2:  8e 83        std Y+6, r24                   
  0bb4:  88 e0        ldi r24, 0x08                  
  0bb6:  8d 83        std Y+5, r24                   
  0bb8:  58 85        ldd r21, Y+8                   
  0bba:  6f 81        ldd r22, Y+7                   
  0bbc:  49 85        ldd r20, Y+9                   
  0bbe:  3d 81        ldd r19, Y+5                   
  0bc0:  2e 81        ldd r18, Y+6                   
  0bc2:  89 81        ldd r24, Y+1                   
  0bc4:  9a 81        ldd r25, Y+2                   
  0bc6:  d7 01        movw r27:r26, r15:r14          
L_0bc8:
  0bc8:  50 83        st Z, r21                      
  0bca:  47 fd        sbrc r20, 7                    
  0bcc:  25 2f        mov r18, r21                   
  0bce:  00 c0        rjmp L_0bd0                    ; -> 0x0bd0
L_0bd0:
  0bd0:  00 c0        rjmp L_0bd2                    ; -> 0x0bd2
L_0bd2:
  0bd2:  20 83        st Z, r18                      
  0bd4:  00 c0        rjmp L_0bd6                    ; -> 0x0bd6
L_0bd6:
  0bd6:  00 c0        rjmp L_0bd8                    ; -> 0x0bd8
L_0bd8:
  0bd8:  00 c0        rjmp L_0bda                    ; -> 0x0bda
L_0bda:
  0bda:  00 c0        rjmp L_0bdc                    ; -> 0x0bdc
L_0bdc:
  0bdc:  00 c0        rjmp L_0bde                    ; -> 0x0bde
L_0bde:
  0bde:  60 83        st Z, r22                      
  0be0:  00 00        nop                            
  0be2:  26 2f        mov r18, r22                   
  0be4:  3a 95        dec r19                        
  0be6:  41 f0        breq L_0bf8                    ; -> 0x0bf8
  0be8:  44 1f        rol r20                        
  0bea:  00 00        nop                            
  0bec:  00 c0        rjmp L_0bee                    ; -> 0x0bee
L_0bee:
  0bee:  00 c0        rjmp L_0bf0                    ; -> 0x0bf0
L_0bf0:
  0bf0:  00 c0        rjmp L_0bf2                    ; -> 0x0bf2
L_0bf2:
  0bf2:  00 c0        rjmp L_0bf4                    ; -> 0x0bf4
L_0bf4:
  0bf4:  00 c0        rjmp L_0bf6                    ; -> 0x0bf6
L_0bf6:
  0bf6:  e8 cf        rjmp L_0bc8                    ; -> 0x0bc8
L_0bf8:
  0bf8:  38 e0        ldi r19, 0x08                  
  0bfa:  4d 91        ld r20, X+                     
  0bfc:  00 c0        rjmp L_0bfe                    ; -> 0x0bfe
L_0bfe:
  0bfe:  60 83        st Z, r22                      
  0c00:  00 c0        rjmp L_0c02                    ; -> 0x0c02
L_0c02:
  0c02:  01 97        sbiw r25:r24, 1                
  0c04:  09 f7        brne L_0bc8                    ; -> 0x0bc8
  0c06:  d8 01        movw r27:r26, r17:r16          
  0c08:  54 96        adiw r27:r26, 20               
  0c0a:  fc 93        st X, r31                      
  0c0c:  ee 93        st -X, r30                     
  0c0e:  53 97        sbiw r27:r26, 19               
  0c10:  49 87        std Y+9, r20                   
  0c12:  3d 83        std Y+5, r19                   
  0c14:  2e 83        std Y+6, r18                   
  0c16:  ac cf        rjmp L_0b70                    ; -> 0x0b70

; ===== NeoPixel_begin =====
NeoPixel_begin:
  0c18:  cf 93        push r28                       
  0c1a:  df 93        push r29                       
  0c1c:  ec 01        movw r29:r28, r25:r24          
  0c1e:  8e 81        ldd r24, Y+6                   
  0c20:  9f 81        ldd r25, Y+7                   
  0c22:  97 fd        sbrc r25, 7                    
  0c24:  07 c0        rjmp L_0c34                    ; -> 0x0c34
  0c26:  61 e0        ldi r22, 0x01                  
  0c28:  0e 94 25 02  call pinMode                   ; -> 0x044a
  0c2c:  60 e0        ldi r22, 0x00                  
  0c2e:  8e 81        ldd r24, Y+6                   
  0c30:  0e 94 f7 01  call digitalWrite              ; -> 0x03ee
L_0c34:
  0c34:  81 e0        ldi r24, 0x01                  
  0c36:  89 83        std Y+1, r24                   
  0c38:  df 91        pop r29                        
  0c3a:  cf 91        pop r28                        
  0c3c:  08 95        ret                            

; ===== USR_led =====
USR_led:
  0c3e:  ef 92        push r14                       
  0c40:  ff 92        push r15                       
  0c42:  0f 93        push r16                       
  0c44:  1f 93        push r17                       
  0c46:  cf 93        push r28                       
  0c48:  df 93        push r29                       
  0c4a:  ea 01        movw r29:r28, r21:r20          
  0c4c:  26 e0        ldi r18, 0x06                  
  0c4e:  26 9f        mul r18, r22                   
  0c50:  f0 01        movw r31:r30, r1:r0            
  0c52:  27 9f        mul r18, r23                   
  0c54:  f0 0d        add r31, r0                    
  0c56:  11 24        clr r1                         
  0c58:  26 e3        ldi r18, 0x36                  
  0c5a:  ac 01        movw r21:r20, r25:r24          
  0c5c:  24 9f        mul r18, r20                   
  0c5e:  c0 01        movw r25:r24, r1:r0            
  0c60:  25 9f        mul r18, r21                   
  0c62:  90 0d        add r25, r0                    
  0c64:  11 24        clr r1                         
  0c66:  e8 0f        add r30, r24                   
  0c68:  f9 1f        adc r31, r25                   
  0c6a:  e4 5c        subi r30, 0xc4                 
  0c6c:  fe 4f        sbci r31, 0xfe                 
  0c6e:  80 81        ld r24, Z                      
  0c70:  91 81        ldd r25, Z+1                   
  0c72:  82 30        cpi r24, 0x02                  
  0c74:  91 05        cpc r25, r1                    
  0c76:  09 f4        brne L_0c7a                    ; -> 0x0c7a
  0c78:  86 c0        rjmp L_0d86                    ; -> 0x0d86
L_0c7a:
  0c7a:  0c f0        brlt L_0c7e                    ; -> 0x0c7e
  0c7c:  40 c0        rjmp L_0cfe                    ; -> 0x0cfe
L_0c7e:
  0c7e:  01 97        sbiw r25:r24, 1                
  0c80:  09 f4        brne L_0c84                    ; -> 0x0c84
  0c82:  63 c0        rjmp L_0d4a                    ; -> 0x0d4a
L_0c84:
  0c84:  d0 e0        ldi r29, 0x00                  
  0c86:  c0 e0        ldi r28, 0x00                  ; r29:r28 = 0x0000 (0)
L_0c88:
  0c88:  20 e0        ldi r18, 0x00                  
  0c8a:  30 e0        ldi r19, 0x00                  ; r19:r18 = 0x0000 (0)
  0c8c:  a9 01        movw r21:r20, r19:r18          
  0c8e:  be 01        movw r23:r22, r29:r28          
  0c90:  80 ee        ldi r24, 0xe0                  
  0c92:  93 e0        ldi r25, 0x03                  ; r25:r24 = 0x03e0 (992) strip1
  0c94:  0e 94 d6 04  call NeoPixel_setPixelColor    ; -> 0x09ac
  0c98:  80 ee        ldi r24, 0xe0                  ; r25:r24 = 0x03e0 (992) strip1
  0c9a:  93 e0        ldi r25, 0x03                  ; r25:r24 = 0x03e0 (992) strip1
  0c9c:  0e 94 37 05  call NeoPixel_show             ; -> 0x0a6e
  0ca0:  20 e0        ldi r18, 0x00                  
  0ca2:  30 e0        ldi r19, 0x00                  ; r19:r18 = 0x0000 (0)
  0ca4:  a9 01        movw r21:r20, r19:r18          
  0ca6:  be 01        movw r23:r22, r29:r28          
  0ca8:  8a ec        ldi r24, 0xca                  
  0caa:  93 e0        ldi r25, 0x03                  ; r25:r24 = 0x03ca (970) strip2
  0cac:  0e 94 d6 04  call NeoPixel_setPixelColor    ; -> 0x09ac
  0cb0:  8a ec        ldi r24, 0xca                  ; r25:r24 = 0x03ca (970) strip2
  0cb2:  93 e0        ldi r25, 0x03                  ; r25:r24 = 0x03ca (970) strip2
  0cb4:  0e 94 37 05  call NeoPixel_show             ; -> 0x0a6e
  0cb8:  20 e0        ldi r18, 0x00                  
  0cba:  30 e0        ldi r19, 0x00                  ; r19:r18 = 0x0000 (0)
  0cbc:  a9 01        movw r21:r20, r19:r18          
  0cbe:  be 01        movw r23:r22, r29:r28          
  0cc0:  84 eb        ldi r24, 0xb4                  
  0cc2:  93 e0        ldi r25, 0x03                  ; r25:r24 = 0x03b4 (948) strip3
  0cc4:  0e 94 d6 04  call NeoPixel_setPixelColor    ; -> 0x09ac
  0cc8:  84 eb        ldi r24, 0xb4                  ; r25:r24 = 0x03b4 (948) strip3
  0cca:  93 e0        ldi r25, 0x03                  ; r25:r24 = 0x03b4 (948) strip3
  0ccc:  0e 94 37 05  call NeoPixel_show             ; -> 0x0a6e
  0cd0:  20 e0        ldi r18, 0x00                  
  0cd2:  30 e0        ldi r19, 0x00                  ; r19:r18 = 0x0000 (0)
  0cd4:  a9 01        movw r21:r20, r19:r18          
  0cd6:  be 01        movw r23:r22, r29:r28          
  0cd8:  8e e9        ldi r24, 0x9e                  
  0cda:  93 e0        ldi r25, 0x03                  ; r25:r24 = 0x039e (926) strip4
  0cdc:  0e 94 d6 04  call NeoPixel_setPixelColor    ; -> 0x09ac
  0ce0:  8e e9        ldi r24, 0x9e                  ; r25:r24 = 0x039e (926) strip4
  0ce2:  93 e0        ldi r25, 0x03                  ; r25:r24 = 0x039e (926) strip4
  0ce4:  0e 94 37 05  call NeoPixel_show             ; -> 0x0a6e
  0ce8:  21 96        adiw r29:r28, 1                
  0cea:  c8 32        cpi r28, 0x28                  
  0cec:  d1 05        cpc r29, r1                    
  0cee:  61 f6        brne L_0c88                    ; -> 0x0c88
L_0cf0:
  0cf0:  df 91        pop r29                        
  0cf2:  cf 91        pop r28                        
  0cf4:  1f 91        pop r17                        
  0cf6:  0f 91        pop r16                        
  0cf8:  ff 90        pop r15                        
  0cfa:  ef 90        pop r14                        
  0cfc:  08 95        ret                            
L_0cfe:
  0cfe:  83 30        cpi r24, 0x03                  
  0d00:  91 05        cpc r25, r1                    
  0d02:  09 f4        brne L_0d06                    ; -> 0x0d06
  0d04:  60 c0        rjmp L_0dc6                    ; -> 0x0dc6
L_0d06:
  0d06:  04 97        sbiw r25:r24, 4                
  0d08:  09 f0        breq L_0d0c                    ; -> 0x0d0c
  0d0a:  bc cf        rjmp L_0c84                    ; -> 0x0c84
L_0d0c:
  0d0c:  02 81        ldd r16, Z+2                   
  0d0e:  13 81        ldd r17, Z+3                   
  0d10:  e4 80        ldd r14, Z+4                   
  0d12:  f5 80        ldd r15, Z+5                   
L_0d14:
  0d14:  e0 16        cp r14, r16                    
  0d16:  f1 06        cpc r15, r17                   
  0d18:  5c f3        brlt L_0cf0                    ; -> 0x0cf0
  0d1a:  88 81        ld r24, Y                      
  0d1c:  2a 81        ldd r18, Y+2                   
  0d1e:  30 e0        ldi r19, 0x00                  
  0d20:  50 e0        ldi r21, 0x00                  
  0d22:  40 e0        ldi r20, 0x00                  ; r21:r20 = 0x0000 (0)
  0d24:  54 2f        mov r21, r20                   
  0d26:  43 2f        mov r20, r19                   
  0d28:  32 2f        mov r19, r18                   
  0d2a:  22 27        clr r18                        
  0d2c:  48 2b        or r20, r24                    
  0d2e:  8c 81        ldd r24, Y+4                   
  0d30:  28 2b        or r18, r24                    
  0d32:  b8 01        movw r23:r22, r17:r16          
  0d34:  8e e9        ldi r24, 0x9e                  
  0d36:  93 e0        ldi r25, 0x03                  ; r25:r24 = 0x039e (926) strip4
  0d38:  0e 94 d6 04  call NeoPixel_setPixelColor    ; -> 0x09ac
  0d3c:  8e e9        ldi r24, 0x9e                  ; r25:r24 = 0x039e (926) strip4
  0d3e:  93 e0        ldi r25, 0x03                  ; r25:r24 = 0x039e (926) strip4
  0d40:  0e 94 37 05  call NeoPixel_show             ; -> 0x0a6e
  0d44:  0f 5f        subi r16, 0xff                 
  0d46:  1f 4f        sbci r17, 0xff                 
  0d48:  e5 cf        rjmp L_0d14                    ; -> 0x0d14
L_0d4a:
  0d4a:  02 81        ldd r16, Z+2                   
  0d4c:  13 81        ldd r17, Z+3                   
  0d4e:  e4 80        ldd r14, Z+4                   
  0d50:  f5 80        ldd r15, Z+5                   
L_0d52:
  0d52:  e0 16        cp r14, r16                    
  0d54:  f1 06        cpc r15, r17                   
  0d56:  64 f2        brlt L_0cf0                    ; -> 0x0cf0
  0d58:  8a 81        ldd r24, Y+2                   
  0d5a:  28 81        ld r18, Y                      
  0d5c:  30 e0        ldi r19, 0x00                  
  0d5e:  50 e0        ldi r21, 0x00                  
  0d60:  40 e0        ldi r20, 0x00                  ; r21:r20 = 0x0000 (0)
  0d62:  a9 01        movw r21:r20, r19:r18          
  0d64:  33 27        clr r19                        
  0d66:  22 27        clr r18                        
  0d68:  38 2b        or r19, r24                    
  0d6a:  8c 81        ldd r24, Y+4                   
  0d6c:  28 2b        or r18, r24                    
  0d6e:  b8 01        movw r23:r22, r17:r16          
  0d70:  80 ee        ldi r24, 0xe0                  
  0d72:  93 e0        ldi r25, 0x03                  ; r25:r24 = 0x03e0 (992) strip1
  0d74:  0e 94 d6 04  call NeoPixel_setPixelColor    ; -> 0x09ac
  0d78:  80 ee        ldi r24, 0xe0                  ; r25:r24 = 0x03e0 (992) strip1
  0d7a:  93 e0        ldi r25, 0x03                  ; r25:r24 = 0x03e0 (992) strip1
  0d7c:  0e 94 37 05  call NeoPixel_show             ; -> 0x0a6e
  0d80:  0f 5f        subi r16, 0xff                 
  0d82:  1f 4f        sbci r17, 0xff                 
  0d84:  e6 cf        rjmp L_0d52                    ; -> 0x0d52
L_0d86:
  0d86:  02 81        ldd r16, Z+2                   
  0d88:  13 81        ldd r17, Z+3                   
  0d8a:  e4 80        ldd r14, Z+4                   
  0d8c:  f5 80        ldd r15, Z+5                   
L_0d8e:
  0d8e:  e0 16        cp r14, r16                    
  0d90:  f1 06        cpc r15, r17                   
  0d92:  0c f4        brge L_0d96                    ; -> 0x0d96
  0d94:  ad cf        rjmp L_0cf0                    ; -> 0x0cf0
L_0d96:
  0d96:  88 81        ld r24, Y                      
  0d98:  2a 81        ldd r18, Y+2                   
  0d9a:  30 e0        ldi r19, 0x00                  
  0d9c:  50 e0        ldi r21, 0x00                  
  0d9e:  40 e0        ldi r20, 0x00                  ; r21:r20 = 0x0000 (0)
  0da0:  54 2f        mov r21, r20                   
  0da2:  43 2f        mov r20, r19                   
  0da4:  32 2f        mov r19, r18                   
  0da6:  22 27        clr r18                        
  0da8:  48 2b        or r20, r24                    
  0daa:  8c 81        ldd r24, Y+4                   
  0dac:  28 2b        or r18, r24                    
  0dae:  b8 01        movw r23:r22, r17:r16          
  0db0:  8a ec        ldi r24, 0xca                  
  0db2:  93 e0        ldi r25, 0x03                  ; r25:r24 = 0x03ca (970) strip2
  0db4:  0e 94 d6 04  call NeoPixel_setPixelColor    ; -> 0x09ac
  0db8:  8a ec        ldi r24, 0xca                  ; r25:r24 = 0x03ca (970) strip2
  0dba:  93 e0        ldi r25, 0x03                  ; r25:r24 = 0x03ca (970) strip2
  0dbc:  0e 94 37 05  call NeoPixel_show             ; -> 0x0a6e
  0dc0:  0f 5f        subi r16, 0xff                 
  0dc2:  1f 4f        sbci r17, 0xff                 
  0dc4:  e4 cf        rjmp L_0d8e                    ; -> 0x0d8e
L_0dc6:
  0dc6:  02 81        ldd r16, Z+2                   
  0dc8:  13 81        ldd r17, Z+3                   
  0dca:  e4 80        ldd r14, Z+4                   
  0dcc:  f5 80        ldd r15, Z+5                   
L_0dce:
  0dce:  e0 16        cp r14, r16                    
  0dd0:  f1 06        cpc r15, r17                   
  0dd2:  0c f4        brge L_0dd6                    ; -> 0x0dd6
  0dd4:  8d cf        rjmp L_0cf0                    ; -> 0x0cf0
L_0dd6:
  0dd6:  88 81        ld r24, Y                      
  0dd8:  2a 81        ldd r18, Y+2                   
  0dda:  30 e0        ldi r19, 0x00                  
  0ddc:  50 e0        ldi r21, 0x00                  
  0dde:  40 e0        ldi r20, 0x00                  ; r21:r20 = 0x0000 (0)
  0de0:  54 2f        mov r21, r20                   
  0de2:  43 2f        mov r20, r19                   
  0de4:  32 2f        mov r19, r18                   
  0de6:  22 27        clr r18                        
  0de8:  48 2b        or r20, r24                    
  0dea:  8c 81        ldd r24, Y+4                   
  0dec:  28 2b        or r18, r24                    
  0dee:  b8 01        movw r23:r22, r17:r16          
  0df0:  84 eb        ldi r24, 0xb4                  
  0df2:  93 e0        ldi r25, 0x03                  ; r25:r24 = 0x03b4 (948) strip3
  0df4:  0e 94 d6 04  call NeoPixel_setPixelColor    ; -> 0x09ac
  0df8:  84 eb        ldi r24, 0xb4                  ; r25:r24 = 0x03b4 (948) strip3
  0dfa:  93 e0        ldi r25, 0x03                  ; r25:r24 = 0x03b4 (948) strip3
  0dfc:  0e 94 37 05  call NeoPixel_show             ; -> 0x0a6e
  0e00:  0f 5f        subi r16, 0xff                 
  0e02:  1f 4f        sbci r17, 0xff                 
  0e04:  e4 cf        rjmp L_0dce                    ; -> 0x0dce

; ===== Print_write_str =====
Print_write_str:
  0e06:  fc 01        movw r31:r30, r25:r24          
L_0e08:
  0e08:  01 90        ld r0, Z+                      
  0e0a:  00 20        tst r0                         
  0e0c:  e9 f7        brne L_0e08                    ; -> 0x0e08
  0e0e:  31 97        sbiw r31:r30, 1                
  0e10:  af 01        movw r21:r20, r31:r30          
  0e12:  48 1b        sub r20, r24                   
  0e14:  59 0b        sbc r21, r25                   
  0e16:  bc 01        movw r23:r22, r25:r24          
  0e18:  81 e0        ldi r24, 0x01                  
  0e1a:  93 e0        ldi r25, 0x03                  ; r25:r24 = 0x0301 (769) Serial
  0e1c:  0c 94 98 00  jmp L_0130                     ; -> 0x0130

; ===== Print_newline =====
Print_newline:
  0e20:  82 e9        ldi r24, 0x92                  ; r25:r24 = 0x0392 (914)
  0e22:  92 e0        ldi r25, 0x02                  ; r25:r24 = 0x0292 (658)
  0e24:  0c 94 03 07  jmp Print_write_str            ; -> 0x0e06

; ===== Print_str_P =====
Print_str_P:
  0e28:  0f 93        push r16                       
  0e2a:  1f 93        push r17                       
  0e2c:  cf 93        push r28                       
  0e2e:  df 93        push r29                       
  0e30:  8c 01        movw r17:r16, r25:r24          
  0e32:  d0 e0        ldi r29, 0x00                  
  0e34:  c0 e0        ldi r28, 0x00                  ; r29:r28 = 0x0000 (0)
L_0e36:
  0e36:  f8 01        movw r31:r30, r17:r16          
  0e38:  ec 0f        add r30, r28                   
  0e3a:  fd 1f        adc r31, r29                   
  0e3c:  64 91        lpm r22, Z                     
  0e3e:  66 23        tst r22                        
  0e40:  41 f0        breq L_0e52                    ; -> 0x0e52
  0e42:  81 e0        ldi r24, 0x01                  
  0e44:  93 e0        ldi r25, 0x03                  ; r25:r24 = 0x0301 (769) Serial
  0e46:  0e 94 38 01  call HardwareSerial_write      ; -> 0x0270
  0e4a:  89 2b        or r24, r25                    
  0e4c:  11 f0        breq L_0e52                    ; -> 0x0e52
  0e4e:  21 96        adiw r29:r28, 1                
  0e50:  f2 cf        rjmp L_0e36                    ; -> 0x0e36
L_0e52:
  0e52:  0e 94 10 07  call Print_newline             ; -> 0x0e20
  0e56:  8c 0f        add r24, r28                   
  0e58:  9d 1f        adc r25, r29                   
  0e5a:  df 91        pop r29                        
  0e5c:  cf 91        pop r28                        
  0e5e:  1f 91        pop r17                        
  0e60:  0f 91        pop r16                        
  0e62:  08 95        ret                            

; ===== Print_int =====
Print_int:
  0e64:  8f 92        push r8                        
  0e66:  9f 92        push r9                        
  0e68:  af 92        push r10                       
  0e6a:  bf 92        push r11                       
  0e6c:  cf 92        push r12                       
  0e6e:  df 92        push r13                       
  0e70:  ef 92        push r14                       
  0e72:  ff 92        push r15                       
  0e74:  0f 93        push r16                       
  0e76:  1f 93        push r17                       
  0e78:  cf 93        push r28                       
  0e7a:  df 93        push r29                       
  0e7c:  cd b7        in r28, 0x3d                   ; SPL
  0e7e:  de b7        in r29, 0x3e                   ; SPH
  0e80:  a1 97        sbiw r29:r28, 33               
  0e82:  0f b6        in r0, 0x3f                    ; SREG
  0e84:  f8 94        cli                            
  0e86:  de bf        out 0x3e, r29                  ; SPH
  0e88:  0f be        out 0x3f, r0                   ; SREG
  0e8a:  cd bf        out 0x3d, r28                  ; SPL
  0e8c:  6c 01        movw r13:r12, r25:r24          
  0e8e:  99 0f        lsl r25                        
  0e90:  ee 08        sbc r14, r14                   
  0e92:  ff 08        sbc r15, r15                   
  0e94:  f7 fe        sbrs r15, 7                    
  0e96:  45 c0        rjmp L_0f22                    ; -> 0x0f22
  0e98:  6d e2        ldi r22, 0x2d                  
  0e9a:  81 e0        ldi r24, 0x01                  
  0e9c:  93 e0        ldi r25, 0x03                  ; r25:r24 = 0x0301 (769) Serial
  0e9e:  0e 94 38 01  call HardwareSerial_write      ; -> 0x0270
  0ea2:  8c 01        movw r17:r16, r25:r24          
  0ea4:  22 27        clr r18                        
  0ea6:  33 27        clr r19                        
  0ea8:  a9 01        movw r21:r20, r19:r18          
  0eaa:  2c 19        sub r18, r12                   
  0eac:  3d 09        sbc r19, r13                   
  0eae:  4e 09        sbc r20, r14                   
  0eb0:  5f 09        sbc r21, r15                   
  0eb2:  19 a2        std Y+33, r1                   
  0eb4:  ce 01        movw r25:r24, r29:r28          
  0eb6:  81 96        adiw r25:r24, 33               
  0eb8:  7c 01        movw r15:r14, r25:r24          
  0eba:  9a e0        ldi r25, 0x0a                  
  0ebc:  89 2e        mov r8, r25                    
  0ebe:  91 2c        mov r9, r1                     
  0ec0:  a1 2c        mov r10, r1                    
  0ec2:  b1 2c        mov r11, r1                    
L_0ec4:
  0ec4:  ca 01        movw r25:r24, r21:r20          
  0ec6:  b9 01        movw r23:r22, r19:r18          
  0ec8:  a5 01        movw r21:r20, r11:r10          
  0eca:  94 01        movw r19:r18, r9:r8            
  0ecc:  0e 94 8c 1d  call F_3b18                    ; -> 0x3b18
  0ed0:  60 5d        subi r22, 0xd0                 
  0ed2:  f7 01        movw r31:r30, r15:r14          
  0ed4:  62 93        st -Z, r22                     
  0ed6:  7f 01        movw r15:r14, r31:r30          
  0ed8:  21 15        cp r18, r1                     
  0eda:  31 05        cpc r19, r1                    
  0edc:  41 05        cpc r20, r1                    
  0ede:  51 05        cpc r21, r1                    
  0ee0:  89 f7        brne L_0ec4                    ; -> 0x0ec4
  0ee2:  90 e0        ldi r25, 0x00                  
  0ee4:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  0ee6:  30 97        sbiw r31:r30, 0                
  0ee8:  19 f0        breq L_0ef0                    ; -> 0x0ef0
  0eea:  cf 01        movw r25:r24, r31:r30          
  0eec:  0e 94 03 07  call Print_write_str           ; -> 0x0e06
L_0ef0:
  0ef0:  08 0f        add r16, r24                   
  0ef2:  19 1f        adc r17, r25                   
L_0ef4:
  0ef4:  0e 94 10 07  call Print_newline             ; -> 0x0e20
  0ef8:  80 0f        add r24, r16                   
  0efa:  91 1f        adc r25, r17                   
  0efc:  a1 96        adiw r29:r28, 33               
  0efe:  0f b6        in r0, 0x3f                    ; SREG
  0f00:  f8 94        cli                            
  0f02:  de bf        out 0x3e, r29                  ; SPH
  0f04:  0f be        out 0x3f, r0                   ; SREG
  0f06:  cd bf        out 0x3d, r28                  ; SPL
  0f08:  df 91        pop r29                        
  0f0a:  cf 91        pop r28                        
  0f0c:  1f 91        pop r17                        
  0f0e:  0f 91        pop r16                        
  0f10:  ff 90        pop r15                        
  0f12:  ef 90        pop r14                        
  0f14:  df 90        pop r13                        
  0f16:  cf 90        pop r12                        
  0f18:  bf 90        pop r11                        
  0f1a:  af 90        pop r10                        
  0f1c:  9f 90        pop r9                         
  0f1e:  8f 90        pop r8                         
  0f20:  08 95        ret                            
L_0f22:
  0f22:  a7 01        movw r21:r20, r15:r14          
  0f24:  96 01        movw r19:r18, r13:r12          
  0f26:  19 a2        std Y+33, r1                   
  0f28:  8e 01        movw r17:r16, r29:r28          
  0f2a:  0f 5d        subi r16, 0xdf                 
  0f2c:  1f 4f        sbci r17, 0xff                 
  0f2e:  8a e0        ldi r24, 0x0a                  
  0f30:  c8 2e        mov r12, r24                   
  0f32:  d1 2c        mov r13, r1                    
  0f34:  e1 2c        mov r14, r1                    
  0f36:  f1 2c        mov r15, r1                    
L_0f38:
  0f38:  ca 01        movw r25:r24, r21:r20          
  0f3a:  b9 01        movw r23:r22, r19:r18          
  0f3c:  a7 01        movw r21:r20, r15:r14          
  0f3e:  96 01        movw r19:r18, r13:r12          
  0f40:  0e 94 8c 1d  call F_3b18                    ; -> 0x3b18
  0f44:  60 5d        subi r22, 0xd0                 
  0f46:  f8 01        movw r31:r30, r17:r16          
  0f48:  62 93        st -Z, r22                     
  0f4a:  8f 01        movw r17:r16, r31:r30          
  0f4c:  21 15        cp r18, r1                     
  0f4e:  31 05        cpc r19, r1                    
  0f50:  41 05        cpc r20, r1                    
  0f52:  51 05        cpc r21, r1                    
  0f54:  89 f7        brne L_0f38                    ; -> 0x0f38
  0f56:  30 97        sbiw r31:r30, 0                
  0f58:  29 f0        breq L_0f64                    ; -> 0x0f64
  0f5a:  cf 01        movw r25:r24, r31:r30          
  0f5c:  0e 94 03 07  call Print_write_str           ; -> 0x0e06
  0f60:  8c 01        movw r17:r16, r25:r24          
  0f62:  c8 cf        rjmp L_0ef4                    ; -> 0x0ef4
L_0f64:
  0f64:  10 e0        ldi r17, 0x00                  
  0f66:  00 e0        ldi r16, 0x00                  ; r17:r16 = 0x0000 (0)
  0f68:  c5 cf        rjmp L_0ef4                    ; -> 0x0ef4

; ===== USR_tocar =====
USR_tocar:
  0f6a:  0f 93        push r16                       
  0f6c:  1f 93        push r17                       
  0f6e:  cf 93        push r28                       
  0f70:  df 93        push r29                       
  0f72:  ec 01        movw r29:r28, r25:r24          
  0f74:  8b 01        movw r17:r16, r23:r22          
  0f76:  0e 94 10 07  call Print_newline             ; -> 0x0e20
  0f7a:  0e 94 10 07  call Print_newline             ; -> 0x0e20
  0f7e:  85 e9        ldi r24, 0x95                  
  0f80:  92 e0        ldi r25, 0x02                  ; r25:r24 = 0x0295 (661)
  0f82:  0e 94 03 07  call Print_write_str           ; -> 0x0e06
  0f86:  21 97        sbiw r29:r28, 1                
  0f88:  ce 01        movw r25:r24, r29:r28          
  0f8a:  0e 94 32 07  call Print_int                 ; -> 0x0e64
  0f8e:  89 e9        ldi r24, 0x99                  
  0f90:  92 e0        ldi r25, 0x02                  ; r25:r24 = 0x0299 (665)
  0f92:  0e 94 03 07  call Print_write_str           ; -> 0x0e06
  0f96:  c8 01        movw r25:r24, r17:r16          
  0f98:  0e 94 32 07  call Print_int                 ; -> 0x0e64
  0f9c:  86 e0        ldi r24, 0x06                  ; r25:r24 = 0x0206 (518)
  0f9e:  8c 9f        mul r24, r28                   
  0fa0:  f0 01        movw r31:r30, r1:r0            
  0fa2:  8d 9f        mul r24, r29                   
  0fa4:  f0 0d        add r31, r0                    
  0fa6:  11 24        clr r1                         
  0fa8:  e0 0f        add r30, r16                   
  0faa:  f1 1f        adc r31, r17                   
  0fac:  ee 0f        lsl r30                        
  0fae:  ff 1f        rol r31                        
  0fb0:  e6 5b        subi r30, 0xb6                 
  0fb2:  fd 4f        sbci r31, 0xfd                 
  0fb4:  60 81        ld r22, Z                      
  0fb6:  71 81        ldd r23, Z+1                   
  0fb8:  83 e0        ldi r24, 0x03                  
  0fba:  0e 94 c4 03  call DFP_sendStack             ; -> 0x0788
  0fbe:  68 ec        ldi r22, 0xc8                  
  0fc0:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x00c8 (200)
  0fc2:  80 e0        ldi r24, 0x00                  
  0fc4:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  0fc6:  0e 94 7b 02  call delay                     ; -> 0x04f6
  0fca:  df 91        pop r29                        
  0fcc:  cf 91        pop r28                        
  0fce:  1f 91        pop r17                        
  0fd0:  0f 91        pop r16                        
  0fd2:  0c 94 10 07  jmp Print_newline              ; -> 0x0e20
L_0fd6:
  0fd6:  1f 92        push r1                        
  0fd8:  0f 92        push r0                        
  0fda:  0f b6        in r0, 0x3f                    ; SREG
  0fdc:  0f 92        push r0                        
  0fde:  11 24        clr r1                         
  0fe0:  2f 93        push r18                       
  0fe2:  3f 93        push r19                       
  0fe4:  4f 93        push r20                       
  0fe6:  5f 93        push r21                       
  0fe8:  6f 93        push r22                       
  0fea:  7f 93        push r23                       
  0fec:  8f 93        push r24                       
  0fee:  9f 93        push r25                       
  0ff0:  af 93        push r26                       
  0ff2:  bf 93        push r27                       
  0ff4:  ef 93        push r30                       
  0ff6:  ff 93        push r31                       
  0ff8:  81 e0        ldi r24, 0x01                  
  0ffa:  93 e0        ldi r25, 0x03                  ; r25:r24 = 0x0301 (769) Serial
  0ffc:  0e 94 16 01  call HardwareSerial_tx_udr_empty ; -> 0x022c
  1000:  ff 91        pop r31                        
  1002:  ef 91        pop r30                        
  1004:  bf 91        pop r27                        
  1006:  af 91        pop r26                        
  1008:  9f 91        pop r25                        
  100a:  8f 91        pop r24                        
  100c:  7f 91        pop r23                        
  100e:  6f 91        pop r22                        
  1010:  5f 91        pop r21                        
  1012:  4f 91        pop r20                        
  1014:  3f 91        pop r19                        
  1016:  2f 91        pop r18                        
  1018:  0f 90        pop r0                         
  101a:  0f be        out 0x3f, r0                   ; SREG
  101c:  0f 90        pop r0                         
  101e:  1f 90        pop r1                         
  1020:  18 95        reti                           
L_1022:
  1022:  1f 92        push r1                        
  1024:  0f 92        push r0                        
  1026:  0f b6        in r0, 0x3f                    ; SREG
  1028:  0f 92        push r0                        
  102a:  11 24        clr r1                         
  102c:  2f 93        push r18                       
  102e:  8f 93        push r24                       
  1030:  9f 93        push r25                       
  1032:  ef 93        push r30                       
  1034:  ff 93        push r31                       
  1036:  e0 91 11 03  lds r30, 0x0311                ; v_0311
  103a:  f0 91 12 03  lds r31, 0x0312                ; v_0312
  103e:  80 81        ld r24, Z                      
  1040:  e0 91 17 03  lds r30, 0x0317                ; v_0317
  1044:  f0 91 18 03  lds r31, 0x0318                ; v_0318
  1048:  82 fd        sbrc r24, 2                    
  104a:  1b c0        rjmp L_1082                    ; -> 0x1082
  104c:  90 81        ld r25, Z                      
  104e:  80 91 1a 03  lds r24, 0x031a                ; v_031a
  1052:  8f 5f        subi r24, 0xff                 
  1054:  8f 73        andi r24, 0x3f                 
  1056:  20 91 1b 03  lds r18, 0x031b                ; v_031b
  105a:  82 17        cp r24, r18                    
  105c:  41 f0        breq L_106e                    ; -> 0x106e
  105e:  e0 91 1a 03  lds r30, 0x031a                ; v_031a
  1062:  f0 e0        ldi r31, 0x00                  
  1064:  ef 5f        subi r30, 0xff                 
  1066:  fc 4f        sbci r31, 0xfc                 
  1068:  95 8f        std Z+29, r25                  
  106a:  80 93 1a 03  sts 0x031a, r24                ; v_031a
L_106e:
  106e:  ff 91        pop r31                        
  1070:  ef 91        pop r30                        
  1072:  9f 91        pop r25                        
  1074:  8f 91        pop r24                        
  1076:  2f 91        pop r18                        
  1078:  0f 90        pop r0                         
  107a:  0f be        out 0x3f, r0                   ; SREG
  107c:  0f 90        pop r0                         
  107e:  1f 90        pop r1                         
  1080:  18 95        reti                           
L_1082:
  1082:  80 81        ld r24, Z                      
  1084:  f4 cf        rjmp L_106e                    ; -> 0x106e
L_1086:
  1086:  1f 92        push r1                        
  1088:  0f 92        push r0                        
  108a:  0f b6        in r0, 0x3f                    ; SREG
  108c:  0f 92        push r0                        
  108e:  11 24        clr r1                         
  1090:  2f 93        push r18                       
  1092:  3f 93        push r19                       
  1094:  8f 93        push r24                       
  1096:  9f 93        push r25                       
  1098:  af 93        push r26                       
  109a:  bf 93        push r27                       
  109c:  80 91 fd 02  lds r24, 0x02fd                ; timer0_millis
  10a0:  90 91 fe 02  lds r25, 0x02fe                ; v_02fe
  10a4:  a0 91 ff 02  lds r26, 0x02ff                ; v_02ff
  10a8:  b0 91 00 03  lds r27, 0x0300                ; v_0300
  10ac:  30 91 f2 02  lds r19, 0x02f2                ; v_02f2
  10b0:  23 e0        ldi r18, 0x03                  
  10b2:  23 0f        add r18, r19                   
  10b4:  2d 37        cpi r18, 0x7d                  
  10b6:  58 f5        brcc L_110e                    ; -> 0x110e
  10b8:  01 96        adiw r25:r24, 1                
  10ba:  a1 1d        adc r26, r1                    
  10bc:  b1 1d        adc r27, r1                    
L_10be:
  10be:  20 93 f2 02  sts 0x02f2, r18                ; v_02f2
  10c2:  80 93 fd 02  sts 0x02fd, r24                ; timer0_millis
  10c6:  90 93 fe 02  sts 0x02fe, r25                ; v_02fe
  10ca:  a0 93 ff 02  sts 0x02ff, r26                ; v_02ff
  10ce:  b0 93 00 03  sts 0x0300, r27                ; v_0300
  10d2:  80 91 f3 02  lds r24, 0x02f3                ; v_02f3
  10d6:  90 91 f4 02  lds r25, 0x02f4                ; v_02f4
  10da:  a0 91 f5 02  lds r26, 0x02f5                ; v_02f5
  10de:  b0 91 f6 02  lds r27, 0x02f6                ; v_02f6
  10e2:  01 96        adiw r25:r24, 1                
  10e4:  a1 1d        adc r26, r1                    
  10e6:  b1 1d        adc r27, r1                    
  10e8:  80 93 f3 02  sts 0x02f3, r24                ; v_02f3
  10ec:  90 93 f4 02  sts 0x02f4, r25                ; v_02f4
  10f0:  a0 93 f5 02  sts 0x02f5, r26                ; v_02f5
  10f4:  b0 93 f6 02  sts 0x02f6, r27                ; v_02f6
  10f8:  bf 91        pop r27                        
  10fa:  af 91        pop r26                        
  10fc:  9f 91        pop r25                        
  10fe:  8f 91        pop r24                        
  1100:  3f 91        pop r19                        
  1102:  2f 91        pop r18                        
  1104:  0f 90        pop r0                         
  1106:  0f be        out 0x3f, r0                   ; SREG
  1108:  0f 90        pop r0                         
  110a:  1f 90        pop r1                         
  110c:  18 95        reti                           
L_110e:
  110e:  26 e8        ldi r18, 0x86                  
  1110:  23 0f        add r18, r19                   
  1112:  02 96        adiw r25:r24, 2                
  1114:  a1 1d        adc r26, r1                    
  1116:  b1 1d        adc r27, r1                    
  1118:  d2 cf        rjmp L_10be                    ; -> 0x10be
L_111a:
  111a:  1f 92        push r1                        
  111c:  0f 92        push r0                        
  111e:  0f b6        in r0, 0x3f                    ; SREG
  1120:  0f 92        push r0                        
  1122:  11 24        clr r1                         
  1124:  2f 93        push r18                       
  1126:  3f 93        push r19                       
  1128:  4f 93        push r20                       
  112a:  5f 93        push r21                       
  112c:  6f 93        push r22                       
  112e:  7f 93        push r23                       
  1130:  8f 93        push r24                       
  1132:  9f 93        push r25                       
  1134:  af 93        push r26                       
  1136:  bf 93        push r27                       
  1138:  ef 93        push r30                       
  113a:  ff 93        push r31                       
  113c:  e0 91 f9 02  lds r30, 0x02f9                ; v_02f9
  1140:  f0 91 fa 02  lds r31, 0x02fa                ; v_02fa
  1144:  30 97        sbiw r31:r30, 0                
  1146:  49 f0        breq L_115a                    ; -> 0x115a
  1148:  a6 85        ldd r26, Z+14                  
  114a:  b7 85        ldd r27, Z+15                  
  114c:  85 85        ldd r24, Z+13                  
  114e:  96 8d        ldd r25, Z+30                  
  1150:  91 ff        sbrs r25, 1                    
  1152:  14 c0        rjmp L_117c                    ; -> 0x117c
  1154:  9c 91        ld r25, X                      
  1156:  89 23        and r24, r25                   
  1158:  a1 f4        brne L_1182                    ; -> 0x1182
L_115a:
  115a:  ff 91        pop r31                        
  115c:  ef 91        pop r30                        
  115e:  bf 91        pop r27                        
  1160:  af 91        pop r26                        
  1162:  9f 91        pop r25                        
  1164:  8f 91        pop r24                        
  1166:  7f 91        pop r23                        
  1168:  6f 91        pop r22                        
  116a:  5f 91        pop r21                        
  116c:  4f 91        pop r20                        
  116e:  3f 91        pop r19                        
  1170:  2f 91        pop r18                        
  1172:  0f 90        pop r0                         
  1174:  0f be        out 0x3f, r0                   ; SREG
  1176:  0f 90        pop r0                         
  1178:  1f 90        pop r1                         
  117a:  18 95        reti                           
L_117c:
  117c:  9c 91        ld r25, X                      
  117e:  89 23        and r24, r25                   
  1180:  61 f7        brne L_115a                    ; -> 0x115a
L_1182:
  1182:  a3 89        ldd r26, Z+19                  
  1184:  b4 89        ldd r27, Z+20                  
  1186:  9c 91        ld r25, X                      
  1188:  85 89        ldd r24, Z+21                  
  118a:  80 95        com r24                        
  118c:  89 23        and r24, r25                   
  118e:  8c 93        st X, r24                      
  1190:  86 89        ldd r24, Z+22                  
  1192:  97 89        ldd r25, Z+23                  
L_1194:
  1194:  01 97        sbiw r25:r24, 1                
  1196:  f1 f7        brne L_1194                    ; -> 0x1194
  1198:  60 8d        ldd r22, Z+24                  
  119a:  71 8d        ldd r23, Z+25                  
  119c:  a6 85        ldd r26, Z+14                  
  119e:  b7 85        ldd r27, Z+15                  
  11a0:  55 85        ldd r21, Z+13                  
  11a2:  38 e0        ldi r19, 0x08                  
  11a4:  20 e0        ldi r18, 0x00                  ; r19:r18 = 0x0800 (2048)
L_11a6:
  11a6:  cb 01        movw r25:r24, r23:r22          
L_11a8:
  11a8:  01 97        sbiw r25:r24, 1                
  11aa:  f1 f7        brne L_11a8                    ; -> 0x11a8
  11ac:  82 2f        mov r24, r18                   
  11ae:  90 e0        ldi r25, 0x00                  
  11b0:  95 95        asr r25                        
  11b2:  87 95        ror r24                        
  11b4:  28 2f        mov r18, r24                   
  11b6:  4c 91        ld r20, X                      
  11b8:  45 23        and r20, r21                   
  11ba:  09 f0        breq L_11be                    ; -> 0x11be
  11bc:  20 68        ori r18, 0x80                  
L_11be:
  11be:  31 50        subi r19, 0x01                 
  11c0:  91 f7        brne L_11a6                    ; -> 0x11a6
  11c2:  86 8d        ldd r24, Z+30                  
  11c4:  81 fd        sbrc r24, 1                    
  11c6:  20 95        com r18                        
  11c8:  80 91 f8 02  lds r24, 0x02f8                ; v_02f8
  11cc:  90 e0        ldi r25, 0x00                  
  11ce:  01 96        adiw r25:r24, 1                
  11d0:  8f 73        andi r24, 0x3f                 
  11d2:  99 27        clr r25                        
  11d4:  30 91 f7 02  lds r19, 0x02f7                ; v_02f7
  11d8:  38 17        cp r19, r24                    
  11da:  99 f0        breq L_1202                    ; -> 0x1202
  11dc:  a0 91 f8 02  lds r26, 0x02f8                ; v_02f8
  11e0:  b0 e0        ldi r27, 0x00                  
  11e2:  ae 54        subi r26, 0x4e                 
  11e4:  bd 4f        sbci r27, 0xfd                 
  11e6:  2c 93        st X, r18                      
  11e8:  80 93 f8 02  sts 0x02f8, r24                ; v_02f8
L_11ec:
  11ec:  82 8d        ldd r24, Z+26                  
  11ee:  93 8d        ldd r25, Z+27                  
L_11f0:
  11f0:  01 97        sbiw r25:r24, 1                
  11f2:  f1 f7        brne L_11f0                    ; -> 0x11f0
  11f4:  a3 89        ldd r26, Z+19                  
  11f6:  b4 89        ldd r27, Z+20                  
  11f8:  8c 91        ld r24, X                      
  11fa:  95 89        ldd r25, Z+21                  
  11fc:  89 2b        or r24, r25                    
  11fe:  8c 93        st X, r24                      
  1200:  ac cf        rjmp L_115a                    ; -> 0x115a
L_1202:
  1202:  86 8d        ldd r24, Z+30                  
  1204:  81 60        ori r24, 0x01                  
  1206:  86 8f        std Z+30, r24                  
  1208:  f1 cf        rjmp L_11ec                    ; -> 0x11ec

; ===== NeoPixel_ctor =====
NeoPixel_ctor:
  120a:  0f 93        push r16                       
  120c:  1f 93        push r17                       
  120e:  cf 93        push r28                       
  1210:  df 93        push r29                       
  1212:  ec 01        movw r29:r28, r25:r24          
  1214:  16 2f        mov r17, r22                   
  1216:  07 2f        mov r16, r23                   
  1218:  19 82        std Y+1, r1                    
  121a:  18 86        std Y+8, r1                    
  121c:  1f 86        std Y+15, r1                   
  121e:  18 8a        std Y+16, r1                   
  1220:  19 8a        std Y+17, r1                   
  1222:  1a 8a        std Y+18, r1                   
  1224:  81 e0        ldi r24, 0x01                  
  1226:  8e 87        std Y+14, r24                  
  1228:  8b 87        std Y+11, r24                  
  122a:  1c 86        std Y+12, r1                   
  122c:  92 e0        ldi r25, 0x02                  ; r25:r24 = 0x0201 (513)
  122e:  9d 87        std Y+13, r25                  
  1230:  88 83        st Y, r24                      
  1232:  88 e7        ldi r24, 0x78                  ; r25:r24 = 0x0278 (632)
  1234:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0078 (120)
  1236:  9d 83        std Y+5, r25                   
  1238:  8c 83        std Y+4, r24                   
  123a:  0e 94 b4 1d  call malloc                    ; -> 0x3b68
  123e:  9a 87        std Y+10, r25                  
  1240:  89 87        std Y+9, r24                   
  1242:  00 97        sbiw r25:r24, 0                
  1244:  79 f1        breq L_12a4                    ; -> 0x12a4
  1246:  28 e7        ldi r18, 0x78                  
  1248:  fc 01        movw r31:r30, r25:r24          
L_124a:
  124a:  11 92        st Z+, r1                      
  124c:  2a 95        dec r18                        
  124e:  e9 f7        brne L_124a                    ; -> 0x124a
  1250:  88 e2        ldi r24, 0x28                  
  1252:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0028 (40)
  1254:  9b 83        std Y+3, r25                   
  1256:  8a 83        std Y+2, r24                   
L_1258:
  1258:  1e 83        std Y+6, r17                   
  125a:  0f 83        std Y+7, r16                   
  125c:  89 81        ldd r24, Y+1                   
  125e:  88 23        tst r24                        
  1260:  41 f0        breq L_1272                    ; -> 0x1272
  1262:  61 e0        ldi r22, 0x01                  
  1264:  81 2f        mov r24, r17                   
  1266:  0e 94 25 02  call pinMode                   ; -> 0x044a
  126a:  60 e0        ldi r22, 0x00                  
  126c:  81 2f        mov r24, r17                   
  126e:  0e 94 f7 01  call digitalWrite              ; -> 0x03ee
L_1272:
  1272:  81 2f        mov r24, r17                   
  1274:  90 2f        mov r25, r16                   
  1276:  fc 01        movw r31:r30, r25:r24          
  1278:  e0 55        subi r30, 0x50                 
  127a:  ff 4f        sbci r31, 0xff                 
  127c:  e4 91        lpm r30, Z                     
  127e:  f0 e0        ldi r31, 0x00                  
  1280:  ee 0f        lsl r30                        
  1282:  ff 1f        rol r31                        
  1284:  ea 55        subi r30, 0x5a                 
  1286:  ff 4f        sbci r31, 0xff                 
  1288:  25 91        lpm r18, Z+                    
  128a:  34 91        lpm r19, Z                     
  128c:  3c 8b        std Y+20, r19                  
  128e:  2b 8b        std Y+19, r18                  
  1290:  fc 01        movw r31:r30, r25:r24          
  1292:  ec 53        subi r30, 0x3c                 
  1294:  ff 4f        sbci r31, 0xff                 
  1296:  e4 91        lpm r30, Z                     
  1298:  ed 8b        std Y+21, r30                  
  129a:  df 91        pop r29                        
  129c:  cf 91        pop r28                        
  129e:  1f 91        pop r17                        
  12a0:  0f 91        pop r16                        
  12a2:  08 95        ret                            
L_12a4:
  12a4:  1d 82        std Y+5, r1                    
  12a6:  1c 82        std Y+4, r1                    
  12a8:  1b 82        std Y+3, r1                    
  12aa:  1a 82        std Y+2, r1                    
  12ac:  d5 cf        rjmp L_1258                    ; -> 0x1258
  12ae:  10 92 04 03  sts 0x0304, r1                 ; v_0304
  12b2:  10 92 03 03  sts 0x0303, r1                 ; v_0303
  12b6:  88 ee        ldi r24, 0xe8                  
  12b8:  93 e0        ldi r25, 0x03                  ; r25:r24 = 0x03e8 (1000)
  12ba:  a0 e0        ldi r26, 0x00                  
  12bc:  b0 e0        ldi r27, 0x00                  ; r27:r26 = 0x0000 (0)
  12be:  80 93 05 03  sts 0x0305, r24                ; v_0305
  12c2:  90 93 06 03  sts 0x0306, r25                ; v_0306
  12c6:  a0 93 07 03  sts 0x0307, r26                ; v_0307
  12ca:  b0 93 08 03  sts 0x0308, r27                ; v_0308
  12ce:  22 e7        ldi r18, 0x72                  
  12d0:  32 e0        ldi r19, 0x02                  ; r19:r18 = 0x0272 (626)
  12d2:  30 93 02 03  sts 0x0302, r19                ; v_0302
  12d6:  20 93 01 03  sts 0x0301, r18                ; Serial
  12da:  25 ec        ldi r18, 0xc5                  ; r19:r18 = 0x02c5 (709)
  12dc:  30 e0        ldi r19, 0x00                  ; r19:r18 = 0x00c5 (197)
  12de:  30 93 0e 03  sts 0x030e, r19                ; v_030e
  12e2:  20 93 0d 03  sts 0x030d, r18                ; v_030d
  12e6:  24 ec        ldi r18, 0xc4                  ; r19:r18 = 0x00c4 (196)
  12e8:  30 e0        ldi r19, 0x00                  ; r19:r18 = 0x00c4 (196)
  12ea:  30 93 10 03  sts 0x0310, r19                ; v_0310
  12ee:  20 93 0f 03  sts 0x030f, r18                ; v_030f
  12f2:  20 ec        ldi r18, 0xc0                  ; r19:r18 = 0x00c0 (192)
  12f4:  30 e0        ldi r19, 0x00                  ; r19:r18 = 0x00c0 (192)
  12f6:  30 93 12 03  sts 0x0312, r19                ; v_0312
  12fa:  20 93 11 03  sts 0x0311, r18                ; v_0311
  12fe:  21 ec        ldi r18, 0xc1                  ; r19:r18 = 0x00c1 (193)
  1300:  30 e0        ldi r19, 0x00                  ; r19:r18 = 0x00c1 (193)
  1302:  30 93 14 03  sts 0x0314, r19                ; v_0314
  1306:  20 93 13 03  sts 0x0313, r18                ; v_0313
  130a:  22 ec        ldi r18, 0xc2                  ; r19:r18 = 0x00c2 (194)
  130c:  30 e0        ldi r19, 0x00                  ; r19:r18 = 0x00c2 (194)
  130e:  30 93 16 03  sts 0x0316, r19                ; v_0316
  1312:  20 93 15 03  sts 0x0315, r18                ; v_0315
  1316:  26 ec        ldi r18, 0xc6                  ; r19:r18 = 0x00c6 (198)
  1318:  30 e0        ldi r19, 0x00                  ; r19:r18 = 0x00c6 (198)
  131a:  30 93 18 03  sts 0x0318, r19                ; v_0318
  131e:  20 93 17 03  sts 0x0317, r18                ; v_0317
  1322:  10 92 1a 03  sts 0x031a, r1                 ; v_031a
  1326:  10 92 1b 03  sts 0x031b, r1                 ; v_031b
  132a:  10 92 1c 03  sts 0x031c, r1                 ; v_031c
  132e:  10 92 1d 03  sts 0x031d, r1                 ; v_031d
  1332:  10 92 1f 04  sts 0x041f, r1                 ; v_041f
  1336:  10 92 1e 04  sts 0x041e, r1                 ; v_041e
  133a:  80 93 20 04  sts 0x0420, r24                ; v_0420
  133e:  90 93 21 04  sts 0x0421, r25                ; v_0421
  1342:  a0 93 22 04  sts 0x0422, r26                ; v_0422
  1346:  b0 93 23 04  sts 0x0423, r27                ; v_0423
  134a:  84 e8        ldi r24, 0x84                  
  134c:  92 e0        ldi r25, 0x02                  ; r25:r24 = 0x0284 (644)
  134e:  90 93 1d 04  sts 0x041d, r25                ; v_041d
  1352:  80 93 1c 04  sts 0x041c, r24                ; mySoftwareSerial
  1356:  10 92 33 04  sts 0x0433, r1                 ; v_0433
  135a:  10 92 32 04  sts 0x0432, r1                 ; v_0432
  135e:  10 92 35 04  sts 0x0435, r1                 ; v_0435
  1362:  10 92 34 04  sts 0x0434, r1                 ; v_0434
  1366:  10 92 37 04  sts 0x0437, r1                 ; v_0437
  136a:  10 92 36 04  sts 0x0436, r1                 ; v_0436
  136e:  10 92 39 04  sts 0x0439, r1                 ; v_0439
  1372:  10 92 38 04  sts 0x0438, r1                 ; v_0438
  1376:  60 91 3a 04  lds r22, 0x043a                ; v_043a
  137a:  6e 7f        andi r22, 0xfe                 
  137c:  6d 7f        andi r22, 0xfd                 
  137e:  60 93 3a 04  sts 0x043a, r22                ; v_043a
  1382:  66 95        lsr r22                        
  1384:  61 70        andi r22, 0x01                 
  1386:  81 e0        ldi r24, 0x01                  
  1388:  68 27        eor r22, r24                   
  138a:  83 e0        ldi r24, 0x03                  
  138c:  0e 94 f7 01  call digitalWrite              ; -> 0x03ee
  1390:  61 e0        ldi r22, 0x01                  
  1392:  83 e0        ldi r24, 0x03                  
  1394:  0e 94 25 02  call pinMode                   ; -> 0x044a
  1398:  e7 ec        ldi r30, 0xc7                  
  139a:  f0 e0        ldi r31, 0x00                  ; r31:r30 = 0x00c7 (199)
  139c:  e4 91        lpm r30, Z                     
  139e:  e0 93 2c 04  sts 0x042c, r30                ; v_042c
  13a2:  e3 eb        ldi r30, 0xb3                  ; r31:r30 = 0x00b3 (179)
  13a4:  f0 e0        ldi r31, 0x00                  ; r31:r30 = 0x00b3 (179)
  13a6:  e4 91        lpm r30, Z                     
  13a8:  f0 e0        ldi r31, 0x00                  ; r31:r30 = 0x00b3 (179)
  13aa:  ee 0f        lsl r30                        
  13ac:  ff 1f        rol r31                        
  13ae:  ea 55        subi r30, 0x5a                 
  13b0:  ff 4f        sbci r31, 0xff                 
  13b2:  85 91        lpm r24, Z+                    
  13b4:  94 91        lpm r25, Z                     
  13b6:  90 93 2e 04  sts 0x042e, r25                ; v_042e
  13ba:  80 93 2d 04  sts 0x042d, r24                ; v_042d
  13be:  60 e0        ldi r22, 0x00                  
  13c0:  82 e0        ldi r24, 0x02                  
  13c2:  0e 94 25 02  call pinMode                   ; -> 0x044a
  13c6:  80 91 3a 04  lds r24, 0x043a                ; v_043a
  13ca:  81 fd        sbrc r24, 1                    
  13cc:  04 c0        rjmp L_13d6                    ; -> 0x13d6
  13ce:  61 e0        ldi r22, 0x01                  
  13d0:  82 e0        ldi r24, 0x02                  
  13d2:  0e 94 f7 01  call digitalWrite              ; -> 0x03ee
L_13d6:
  13d6:  82 e0        ldi r24, 0x02                  
  13d8:  80 93 28 04  sts 0x0428, r24                ; v_0428
  13dc:  e6 ec        ldi r30, 0xc6                  
  13de:  f0 e0        ldi r31, 0x00                  ; r31:r30 = 0x00c6 (198)
  13e0:  e4 91        lpm r30, Z                     
  13e2:  e0 93 29 04  sts 0x0429, r30                ; v_0429
  13e6:  e2 eb        ldi r30, 0xb2                  ; r31:r30 = 0x00b2 (178)
  13e8:  f0 e0        ldi r31, 0x00                  ; r31:r30 = 0x00b2 (178)
  13ea:  e4 91        lpm r30, Z                     
  13ec:  f0 e0        ldi r31, 0x00                  ; r31:r30 = 0x00b2 (178)
  13ee:  ee 0f        lsl r30                        
  13f0:  ff 1f        rol r31                        
  13f2:  e4 56        subi r30, 0x64                 
  13f4:  ff 4f        sbci r31, 0xff                 
  13f6:  25 91        lpm r18, Z+                    
  13f8:  34 91        lpm r19, Z                     
  13fa:  30 93 2b 04  sts 0x042b, r19                ; v_042b
  13fe:  20 93 2a 04  sts 0x042a, r18                ; v_042a
  1402:  44 ef        ldi r20, 0xf4                  
  1404:  51 e0        ldi r21, 0x01                  ; r21:r20 = 0x01f4 (500)
  1406:  60 e0        ldi r22, 0x00                  
  1408:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0000 (0)
  140a:  40 93 fc 03  sts 0x03fc, r20                ; v_03fc
  140e:  50 93 fd 03  sts 0x03fd, r21                ; v_03fd
  1412:  60 93 fe 03  sts 0x03fe, r22                ; v_03fe
  1416:  70 93 ff 03  sts 0x03ff, r23                ; v_03ff
  141a:  9a e0        ldi r25, 0x0a                  
  141c:  e8 e0        ldi r30, 0x08                  
  141e:  f1 e0        ldi r31, 0x01                  ; r31:r30 = 0x0108 (264)
  1420:  aa e0        ldi r26, 0x0a                  
  1422:  b4 e0        ldi r27, 0x04                  ; r27:r26 = 0x040a (1034)
L_1424:
  1424:  01 90        ld r0, Z+                      
  1426:  0d 92        st X+, r0                      
  1428:  9a 95        dec r25                        
  142a:  e1 f7        brne L_1424                    ; -> 0x1424
  142c:  10 92 14 04  sts 0x0414, r1                 ; v_0414
  1430:  80 93 15 04  sts 0x0415, r24                ; v_0415
  1434:  10 92 1a 04  sts 0x041a, r1                 ; v_041a
  1438:  10 92 1b 04  sts 0x041b, r1                 ; v_041b
  143c:  6d e0        ldi r22, 0x0d                  
  143e:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x000d (13)
  1440:  80 ee        ldi r24, 0xe0                  
  1442:  93 e0        ldi r25, 0x03                  ; r25:r24 = 0x03e0 (992) strip1
  1444:  0e 94 05 09  call NeoPixel_ctor             ; -> 0x120a
  1448:  6c e0        ldi r22, 0x0c                  ; r23:r22 = 0x000c (12)
  144a:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x000c (12)
  144c:  8a ec        ldi r24, 0xca                  ; r25:r24 = 0x03ca (970) strip2
  144e:  93 e0        ldi r25, 0x03                  ; r25:r24 = 0x03ca (970) strip2
  1450:  0e 94 05 09  call NeoPixel_ctor             ; -> 0x120a
  1454:  6b e0        ldi r22, 0x0b                  ; r23:r22 = 0x000b (11)
  1456:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x000b (11)
  1458:  84 eb        ldi r24, 0xb4                  ; r25:r24 = 0x03b4 (948) strip3
  145a:  93 e0        ldi r25, 0x03                  ; r25:r24 = 0x03b4 (948) strip3
  145c:  0e 94 05 09  call NeoPixel_ctor             ; -> 0x120a
  1460:  6a e0        ldi r22, 0x0a                  ; r23:r22 = 0x000a (10)
  1462:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x000a (10)
  1464:  8e e9        ldi r24, 0x9e                  ; r25:r24 = 0x039e (926) strip4
  1466:  93 e0        ldi r25, 0x03                  ; r25:r24 = 0x039e (926) strip4
  1468:  0c 94 05 09  jmp NeoPixel_ctor              ; -> 0x120a

; ===== main =====
main:
  146c:  cf 93        push r28                       
  146e:  df 93        push r29                       
  1470:  cd b7        in r28, 0x3d                   ; SPL
  1472:  de b7        in r29, 0x3e                   ; SPH
  1474:  62 97        sbiw r29:r28, 18               
  1476:  0f b6        in r0, 0x3f                    ; SREG
  1478:  f8 94        cli                            
  147a:  de bf        out 0x3e, r29                  ; SPH
  147c:  0f be        out 0x3f, r0                   ; SREG
  147e:  cd bf        out 0x3d, r28                  ; SPL
  1480:  78 94        sei                            
  1482:  84 b5        in r24, 0x24                   ; TCCR0A
  1484:  82 60        ori r24, 0x02                  
  1486:  84 bd        out 0x24, r24                  ; TCCR0A
  1488:  84 b5        in r24, 0x24                   ; TCCR0A
  148a:  81 60        ori r24, 0x01                  
  148c:  84 bd        out 0x24, r24                  ; TCCR0A
  148e:  85 b5        in r24, 0x25                   ; TCCR0B
  1490:  82 60        ori r24, 0x02                  
  1492:  85 bd        out 0x25, r24                  ; TCCR0B
  1494:  85 b5        in r24, 0x25                   ; TCCR0B
  1496:  81 60        ori r24, 0x01                  
  1498:  85 bd        out 0x25, r24                  ; TCCR0B
  149a:  80 91 6e 00  lds r24, 0x006e                ; TIMSK0
  149e:  81 60        ori r24, 0x01                  
  14a0:  80 93 6e 00  sts 0x006e, r24                ; TIMSK0
  14a4:  10 92 81 00  sts 0x0081, r1                 ; TCCR1B
  14a8:  80 91 81 00  lds r24, 0x0081                ; TCCR1B
  14ac:  82 60        ori r24, 0x02                  
  14ae:  80 93 81 00  sts 0x0081, r24                ; TCCR1B
  14b2:  80 91 81 00  lds r24, 0x0081                ; TCCR1B
  14b6:  81 60        ori r24, 0x01                  
  14b8:  80 93 81 00  sts 0x0081, r24                ; TCCR1B
  14bc:  80 91 80 00  lds r24, 0x0080                ; TCCR1A
  14c0:  81 60        ori r24, 0x01                  
  14c2:  80 93 80 00  sts 0x0080, r24                ; TCCR1A
  14c6:  80 91 b1 00  lds r24, 0x00b1                ; TCCR2B
  14ca:  84 60        ori r24, 0x04                  
  14cc:  80 93 b1 00  sts 0x00b1, r24                ; TCCR2B
  14d0:  80 91 b0 00  lds r24, 0x00b0                ; TCCR2A
  14d4:  81 60        ori r24, 0x01                  
  14d6:  80 93 b0 00  sts 0x00b0, r24                ; TCCR2A
  14da:  80 91 7a 00  lds r24, 0x007a                ; ADCSRA
  14de:  84 60        ori r24, 0x04                  
  14e0:  80 93 7a 00  sts 0x007a, r24                ; ADCSRA
  14e4:  80 91 7a 00  lds r24, 0x007a                ; ADCSRA
  14e8:  82 60        ori r24, 0x02                  
  14ea:  80 93 7a 00  sts 0x007a, r24                ; ADCSRA
  14ee:  80 91 7a 00  lds r24, 0x007a                ; ADCSRA
  14f2:  81 60        ori r24, 0x01                  
  14f4:  80 93 7a 00  sts 0x007a, r24                ; ADCSRA
  14f8:  80 91 7a 00  lds r24, 0x007a                ; ADCSRA
  14fc:  80 68        ori r24, 0x80                  
  14fe:  80 93 7a 00  sts 0x007a, r24                ; ADCSRA
  1502:  10 92 c1 00  sts 0x00c1, r1                 ; UCSR0B
  1506:  80 ee        ldi r24, 0xe0                  
  1508:  93 e0        ldi r25, 0x03                  ; r25:r24 = 0x03e0 (992) strip1
  150a:  0e 94 0c 06  call NeoPixel_begin            ; -> 0x0c18
  150e:  8a ec        ldi r24, 0xca                  ; r25:r24 = 0x03ca (970) strip2
  1510:  93 e0        ldi r25, 0x03                  ; r25:r24 = 0x03ca (970) strip2
  1512:  0e 94 0c 06  call NeoPixel_begin            ; -> 0x0c18
  1516:  84 eb        ldi r24, 0xb4                  ; r25:r24 = 0x03b4 (948) strip3
  1518:  93 e0        ldi r25, 0x03                  ; r25:r24 = 0x03b4 (948) strip3
  151a:  0e 94 0c 06  call NeoPixel_begin            ; -> 0x0c18
  151e:  8e e9        ldi r24, 0x9e                  ; r25:r24 = 0x039e (926) strip4
  1520:  93 e0        ldi r25, 0x03                  ; r25:r24 = 0x039e (926) strip4
  1522:  0e 94 0c 06  call NeoPixel_begin            ; -> 0x0c18
  1526:  e0 91 11 03  lds r30, 0x0311                ; v_0311
  152a:  f0 91 12 03  lds r31, 0x0312                ; v_0312
  152e:  82 e0        ldi r24, 0x02                  
  1530:  80 83        st Z, r24                      
  1532:  e0 91 0d 03  lds r30, 0x030d                ; v_030d
  1536:  f0 91 0e 03  lds r31, 0x030e                ; v_030e
  153a:  10 82        st Z, r1                       
  153c:  e0 91 0f 03  lds r30, 0x030f                ; v_030f
  1540:  f0 91 10 03  lds r31, 0x0310                ; v_0310
  1544:  8f ec        ldi r24, 0xcf                  
  1546:  80 83        st Z, r24                      
  1548:  10 92 19 03  sts 0x0319, r1                 ; v_0319
  154c:  e0 91 15 03  lds r30, 0x0315                ; v_0315
  1550:  f0 91 16 03  lds r31, 0x0316                ; v_0316
  1554:  86 e0        ldi r24, 0x06                  
  1556:  80 83        st Z, r24                      
  1558:  e0 91 13 03  lds r30, 0x0313                ; v_0313
  155c:  f0 91 14 03  lds r31, 0x0314                ; v_0314
  1560:  80 81        ld r24, Z                      
  1562:  80 61        ori r24, 0x10                  
  1564:  80 83        st Z, r24                      
  1566:  e0 91 13 03  lds r30, 0x0313                ; v_0313
  156a:  f0 91 14 03  lds r31, 0x0314                ; v_0314
  156e:  80 81        ld r24, Z                      
  1570:  88 60        ori r24, 0x08                  
  1572:  80 83        st Z, r24                      
  1574:  e0 91 13 03  lds r30, 0x0313                ; v_0313
  1578:  f0 91 14 03  lds r31, 0x0314                ; v_0314
  157c:  80 81        ld r24, Z                      
  157e:  80 68        ori r24, 0x80                  
  1580:  80 83        st Z, r24                      
  1582:  e0 91 13 03  lds r30, 0x0313                ; v_0313
  1586:  f0 91 14 03  lds r31, 0x0314                ; v_0314
  158a:  80 81        ld r24, Z                      
  158c:  8f 7d        andi r24, 0xdf                 
  158e:  80 83        st Z, r24                      
  1590:  60 e0        ldi r22, 0x00                  
  1592:  89 e0        ldi r24, 0x09                  
  1594:  0e 94 25 02  call pinMode                   ; -> 0x044a
  1598:  60 e0        ldi r22, 0x00                  
  159a:  88 e0        ldi r24, 0x08                  
  159c:  0e 94 25 02  call pinMode                   ; -> 0x044a
  15a0:  60 e0        ldi r22, 0x00                  
  15a2:  8e e0        ldi r24, 0x0e                  
  15a4:  0e 94 25 02  call pinMode                   ; -> 0x044a
  15a8:  60 e0        ldi r22, 0x00                  
  15aa:  82 e1        ldi r24, 0x12                  
  15ac:  0e 94 25 02  call pinMode                   ; -> 0x044a
  15b0:  10 92 37 04  sts 0x0437, r1                 ; v_0437
  15b4:  10 92 36 04  sts 0x0436, r1                 ; v_0436
  15b8:  10 92 35 04  sts 0x0435, r1                 ; v_0435
  15bc:  10 92 34 04  sts 0x0434, r1                 ; v_0434
  15c0:  10 92 33 04  sts 0x0433, r1                 ; v_0433
  15c4:  10 92 32 04  sts 0x0432, r1                 ; v_0432
  15c8:  8d e9        ldi r24, 0x9d                  
  15ca:  91 e0        ldi r25, 0x01                  ; r25:r24 = 0x019d (413)
  15cc:  90 93 39 04  sts 0x0439, r25                ; v_0439
  15d0:  80 93 38 04  sts 0x0438, r24                ; v_0438
  15d4:  90 91 28 04  lds r25, 0x0428                ; v_0428
  15d8:  96 31        cpi r25, 0x16                  
  15da:  08 f0        brcs L_15de                    ; -> 0x15de
  15dc:  47 c0        rjmp L_166c                    ; -> 0x166c
L_15de:
  15de:  2d eb        ldi r18, 0xbd                  
  15e0:  30 e0        ldi r19, 0x00                  ; r19:r18 = 0x00bd (189)
  15e2:  30 93 33 04  sts 0x0433, r19                ; v_0433
  15e6:  20 93 32 04  sts 0x0432, r18                ; v_0432
  15ea:  2b e9        ldi r18, 0x9b                  ; r19:r18 = 0x009b (155)
  15ec:  31 e0        ldi r19, 0x01                  ; r19:r18 = 0x019b (411)
  15ee:  30 93 35 04  sts 0x0435, r19                ; v_0435
  15f2:  20 93 34 04  sts 0x0434, r18                ; v_0434
  15f6:  2c e2        ldi r18, 0x2c                  ; r19:r18 = 0x012c (300)
  15f8:  31 e0        ldi r19, 0x01                  ; r19:r18 = 0x012c (300)
  15fa:  30 93 37 04  sts 0x0437, r19                ; v_0437
  15fe:  20 93 36 04  sts 0x0436, r18                ; v_0436
  1602:  20 91 68 00  lds r18, 0x0068                ; PCICR
  1606:  84 e0        ldi r24, 0x04                  
  1608:  98 30        cpi r25, 0x08                  
  160a:  48 f0        brcs L_161e                    ; -> 0x161e
  160c:  31 e0        ldi r19, 0x01                  
  160e:  9e 30        cpi r25, 0x0e                  
  1610:  08 f4        brcc L_1614                    ; -> 0x1614
  1612:  30 e0        ldi r19, 0x00                  
L_1614:
  1614:  81 e0        ldi r24, 0x01                  
  1616:  01 c0        rjmp L_161a                    ; -> 0x161a
L_1618:
  1618:  88 0f        lsl r24                        
L_161a:
  161a:  3a 95        dec r19                        
  161c:  ea f7        brpl L_1618                    ; -> 0x1618
L_161e:
  161e:  82 2b        or r24, r18                    
  1620:  80 93 68 00  sts 0x0068, r24                ; PCICR
  1624:  2d e6        ldi r18, 0x6d                  
  1626:  30 e0        ldi r19, 0x00                  ; r19:r18 = 0x006d (109)
  1628:  98 30        cpi r25, 0x08                  
  162a:  50 f0        brcs L_1640                    ; -> 0x1640
  162c:  2b e6        ldi r18, 0x6b                  ; r19:r18 = 0x006b (107)
  162e:  30 e0        ldi r19, 0x00                  ; r19:r18 = 0x006b (107)
  1630:  9e 30        cpi r25, 0x0e                  
  1632:  30 f0        brcs L_1640                    ; -> 0x1640
  1634:  2c e6        ldi r18, 0x6c                  ; r19:r18 = 0x006c (108)
  1636:  30 e0        ldi r19, 0x00                  ; r19:r18 = 0x006c (108)
  1638:  96 31        cpi r25, 0x16                  
  163a:  10 f0        brcs L_1640                    ; -> 0x1640
  163c:  30 e0        ldi r19, 0x00                  ; r19:r18 = 0x006c (108)
  163e:  20 e0        ldi r18, 0x00                  ; r19:r18 = 0x0000 (0)
L_1640:
  1640:  30 93 30 04  sts 0x0430, r19                ; v_0430
  1644:  20 93 2f 04  sts 0x042f, r18                ; v_042f
  1648:  29 2f        mov r18, r25                   
  164a:  30 e0        ldi r19, 0x00                  ; r19:r18 = 0x0000 (0)
  164c:  98 30        cpi r25, 0x08                  
  164e:  08 f0        brcs L_1652                    ; -> 0x1652
  1650:  72 c0        rjmp L_1736                    ; -> 0x1736
L_1652:
  1652:  81 e0        ldi r24, 0x01                  
  1654:  01 c0        rjmp L_1658                    ; -> 0x1658
L_1656:
  1656:  88 0f        lsl r24                        
L_1658:
  1658:  9a 95        dec r25                        
  165a:  ea f7        brpl L_1656                    ; -> 0x1656
L_165c:
  165c:  80 93 31 04  sts 0x0431, r24                ; v_0431
  1660:  80 91 38 04  lds r24, 0x0438                ; v_0438
  1664:  90 91 39 04  lds r25, 0x0439                ; v_0439
L_1668:
  1668:  01 97        sbiw r25:r24, 1                
  166a:  f1 f7        brne L_1668                    ; -> 0x1668
L_166c:
  166c:  80 91 36 04  lds r24, 0x0436                ; v_0436
  1670:  90 91 37 04  lds r25, 0x0437                ; v_0437
  1674:  89 2b        or r24, r25                    
  1676:  49 f1        breq L_16ca                    ; -> 0x16ca
  1678:  e0 91 f9 02  lds r30, 0x02f9                ; v_02f9
  167c:  f0 91 fa 02  lds r31, 0x02fa                ; v_02fa
  1680:  24 e0        ldi r18, 0x04                  
  1682:  ec 31        cpi r30, 0x1c                  
  1684:  f2 07        cpc r31, r18                   
  1686:  09 f1        breq L_16ca                    ; -> 0x16ca
  1688:  30 97        sbiw r31:r30, 0                
  168a:  39 f0        breq L_169a                    ; -> 0x169a
  168c:  a3 89        ldd r26, Z+19                  
  168e:  b4 89        ldd r27, Z+20                  
  1690:  9c 91        ld r25, X                      
  1692:  85 89        ldd r24, Z+21                  
  1694:  80 95        com r24                        
  1696:  89 23        and r24, r25                   
  1698:  8c 93        st X, r24                      
L_169a:
  169a:  80 91 3a 04  lds r24, 0x043a                ; v_043a
  169e:  8e 7f        andi r24, 0xfe                 
  16a0:  80 93 3a 04  sts 0x043a, r24                ; v_043a
  16a4:  10 92 f8 02  sts 0x02f8, r1                 ; v_02f8
  16a8:  10 92 f7 02  sts 0x02f7, r1                 ; v_02f7
  16ac:  8c e1        ldi r24, 0x1c                  
  16ae:  94 e0        ldi r25, 0x04                  ; r25:r24 = 0x041c (1052) mySoftwareSerial
  16b0:  90 93 fa 02  sts 0x02fa, r25                ; v_02fa
  16b4:  80 93 f9 02  sts 0x02f9, r24                ; v_02f9
  16b8:  e0 91 2f 04  lds r30, 0x042f                ; v_042f
  16bc:  f0 91 30 04  lds r31, 0x0430                ; v_0430
  16c0:  80 81        ld r24, Z                      
  16c2:  90 91 31 04  lds r25, 0x0431                ; v_0431
  16c6:  89 2b        or r24, r25                    
  16c8:  80 83        st Z, r24                      
L_16ca:
  16ca:  8c e1        ldi r24, 0x1c                  
  16cc:  94 e0        ldi r25, 0x04                  ; r25:r24 = 0x041c (1052) mySoftwareSerial
  16ce:  90 93 f7 03  sts 0x03f7, r25                ; v_03f7
  16d2:  80 93 f6 03  sts 0x03f6, r24                ; v_03f6
  16d6:  10 92 0e 04  sts 0x040e, r1                 ; v_040e
  16da:  70 e0        ldi r23, 0x00                  
  16dc:  60 e0        ldi r22, 0x00                  ; r23:r22 = 0x0000 (0)
  16de:  8c e0        ldi r24, 0x0c                  
  16e0:  0e 94 c4 03  call DFP_sendStack             ; -> 0x0788
  16e4:  8f b7        in r24, 0x3f                   ; SREG
  16e6:  f8 94        cli                            
  16e8:  c0 90 fd 02  lds r12, 0x02fd                ; timer0_millis
  16ec:  d0 90 fe 02  lds r13, 0x02fe                ; v_02fe
  16f0:  e0 90 ff 02  lds r14, 0x02ff                ; v_02ff
  16f4:  f0 90 00 03  lds r15, 0x0300                ; v_0300
  16f8:  8f bf        out 0x3f, r24                  ; SREG
L_16fa:
  16fa:  0e 94 ae 02  call DFP_readAvailable         ; -> 0x055c
  16fe:  81 11        cpse r24, r1                   
  1700:  27 c0        rjmp L_1750                    ; -> 0x1750
  1702:  2f b7        in r18, 0x3f                   ; SREG
  1704:  f8 94        cli                            
  1706:  80 91 fd 02  lds r24, 0x02fd                ; timer0_millis
  170a:  90 91 fe 02  lds r25, 0x02fe                ; v_02fe
  170e:  a0 91 ff 02  lds r26, 0x02ff                ; v_02ff
  1712:  b0 91 00 03  lds r27, 0x0300                ; v_0300
  1716:  2f bf        out 0x3f, r18                  ; SREG
  1718:  8c 19        sub r24, r12                   
  171a:  9d 09        sbc r25, r13                   
  171c:  ae 09        sbc r26, r14                   
  171e:  bf 09        sbc r27, r15                   
  1720:  81 3d        cpi r24, 0xd1                  
  1722:  97 40        sbci r25, 0x07                 
  1724:  a1 05        cpc r26, r1                    
  1726:  b1 05        cpc r27, r1                    
  1728:  98 f4        brcc L_1750                    ; -> 0x1750
  172a:  60 e0        ldi r22, 0x00                  
  172c:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0000 (0)
  172e:  cb 01        movw r25:r24, r23:r22          
  1730:  0e 94 7b 02  call delay                     ; -> 0x04f6
  1734:  e2 cf        rjmp L_16fa                    ; -> 0x16fa
L_1736:
  1736:  9e 30        cpi r25, 0x0e                  
  1738:  40 f4        brcc L_174a                    ; -> 0x174a
  173a:  28 50        subi r18, 0x08                 
  173c:  31 09        sbc r19, r1                    
L_173e:
  173e:  81 e0        ldi r24, 0x01                  
  1740:  01 c0        rjmp L_1744                    ; -> 0x1744
L_1742:
  1742:  88 0f        lsl r24                        
L_1744:
  1744:  2a 95        dec r18                        
  1746:  ea f7        brpl L_1742                    ; -> 0x1742
  1748:  89 cf        rjmp L_165c                    ; -> 0x165c
L_174a:
  174a:  2e 50        subi r18, 0x0e                 
  174c:  31 09        sbc r19, r1                    
  174e:  f7 cf        rjmp L_173e                    ; -> 0x173e
L_1750:
  1750:  68 ec        ldi r22, 0xc8                  
  1752:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x00c8 (200)
  1754:  80 e0        ldi r24, 0x00                  
  1756:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  1758:  0e 94 7b 02  call delay                     ; -> 0x04f6
  175c:  10 92 1a 04  sts 0x041a, r1                 ; v_041a
  1760:  86 e8        ldi r24, 0x86                  ; r25:r24 = 0x0086 (134)
  1762:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0086 (134)
  1764:  0e 94 14 07  call Print_str_P               ; -> 0x0e28
  1768:  6f e0        ldi r22, 0x0f                  
  176a:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x000f (15)
  176c:  86 e0        ldi r24, 0x06                  ; r25:r24 = 0x0006 (6)
  176e:  0e 94 c4 03  call DFP_sendStack             ; -> 0x0788
  1772:  8d e9        ldi r24, 0x9d                  
  1774:  92 e0        ldi r25, 0x02                  ; r25:r24 = 0x029d (669)
  1776:  0e 94 03 07  call Print_write_str           ; -> 0x0e06
  177a:  0e 94 10 07  call Print_newline             ; -> 0x0e20
  177e:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0200 (512)
  1780:  68 2e        mov r6, r24                    
  1782:  80 e0        ldi r24, 0x00                  
  1784:  78 2e        mov r7, r24                    
  1786:  aa 24        clr r10                        
  1788:  aa 94        dec r10                        
  178a:  b1 2c        mov r11, r1                    
  178c:  2e e1        ldi r18, 0x1e                  
  178e:  82 2e        mov r8, r18                    
  1790:  91 2c        mov r9, r1                     
L_1792:
  1792:  89 e0        ldi r24, 0x09                  
  1794:  0e 94 ce 01  call digitalRead               ; -> 0x039c
  1798:  6c 01        movw r13:r12, r25:r24          
  179a:  88 e0        ldi r24, 0x08                  
  179c:  0e 94 ce 01  call digitalRead               ; -> 0x039c
  17a0:  7c 01        movw r15:r14, r25:r24          
  17a2:  8e e0        ldi r24, 0x0e                  
  17a4:  0e 94 ce 01  call digitalRead               ; -> 0x039c
  17a8:  8c 01        movw r17:r16, r25:r24          
  17aa:  82 e1        ldi r24, 0x12                  
  17ac:  0e 94 ce 01  call digitalRead               ; -> 0x039c
  17b0:  c1 14        cp r12, r1                     
  17b2:  d1 04        cpc r13, r1                    
  17b4:  99 f4        brne L_17dc                    ; -> 0x17dc
  17b6:  e1 14        cp r14, r1                     
  17b8:  f1 04        cpc r15, r1                    
  17ba:  11 f0        breq L_17c0                    ; -> 0x17c0
  17bc:  0c 94 50 19  jmp L_32a0                     ; -> 0x32a0
L_17c0:
  17c0:  01 30        cpi r16, 0x01                  
  17c2:  11 05        cpc r17, r1                    
  17c4:  09 f4        brne L_17c8                    ; -> 0x17c8
  17c6:  9c c6        rjmp L_2500                    ; -> 0x2500
L_17c8:
  17c8:  61 14        cp r6, r1                      
  17ca:  71 04        cpc r7, r1                     
  17cc:  11 f3        breq L_1792                    ; -> 0x1792
  17ce:  0e 94 02 01  call Serial_has_data           ; -> 0x0204
  17d2:  88 23        tst r24                        
  17d4:  f1 f2        breq L_1792                    ; -> 0x1792
  17d6:  0e 94 00 00  call F_0000                    ; -> 0x0000
  17da:  db cf        rjmp L_1792                    ; -> 0x1792
L_17dc:
  17dc:  ca 94        dec r12                        
  17de:  cd 28        or r12, r13                    
  17e0:  99 f7        brne L_17c8                    ; -> 0x17c8
  17e2:  21 e0        ldi r18, 0x01                  
  17e4:  e2 16        cp r14, r18                    
  17e6:  f1 04        cpc r15, r1                    
  17e8:  b9 f4        brne L_1818                    ; -> 0x1818
  17ea:  01 30        cpi r16, 0x01                  
  17ec:  11 05        cpc r17, r1                    
  17ee:  61 f7        brne L_17c8                    ; -> 0x17c8
  17f0:  01 97        sbiw r25:r24, 1                
  17f2:  51 f7        brne L_17c8                    ; -> 0x17c8
  17f4:  80 91 fb 02  lds r24, 0x02fb                ; banco
  17f8:  90 91 fc 02  lds r25, 0x02fc                ; v_02fc
  17fc:  01 96        adiw r25:r24, 1                
  17fe:  86 30        cpi r24, 0x06                  
  1800:  91 05        cpc r25, r1                    
  1802:  29 f0        breq L_180e                    ; -> 0x180e
  1804:  90 93 fc 02  sts 0x02fc, r25                ; v_02fc
  1808:  80 93 fb 02  sts 0x02fb, r24                ; banco
  180c:  dd cf        rjmp L_17c8                    ; -> 0x17c8
L_180e:
  180e:  10 92 fc 02  sts 0x02fc, r1                 ; v_02fc
  1812:  10 92 fb 02  sts 0x02fb, r1                 ; banco
  1816:  d8 cf        rjmp L_17c8                    ; -> 0x17c8
L_1818:
  1818:  ef 28        or r14, r15                    
  181a:  b1 f6        brne L_17c8                    ; -> 0x17c8
  181c:  01 2b        or r16, r17                    
  181e:  a1 f6        brne L_17c8                    ; -> 0x17c8
  1820:  00 97        sbiw r25:r24, 0                
  1822:  11 f0        breq L_1828                    ; -> 0x1828
  1824:  0c 94 36 1d  jmp L_3a6c                     ; -> 0x3a6c
L_1828:
  1828:  1e 86        std Y+14, r1                   
  182a:  1d 86        std Y+13, r1                   
  182c:  18 8a        std Y+16, r1                   
  182e:  1f 86        std Y+15, r1                   
  1830:  ba 8a        std Y+18, r11                  
  1832:  a9 8a        std Y+17, r10                  
  1834:  86 e0        ldi r24, 0x06                  
  1836:  e2 e1        ldi r30, 0x12                  
  1838:  f1 e0        ldi r31, 0x01                  ; r31:r30 = 0x0112 (274)
  183a:  de 01        movw r27:r26, r29:r28          
  183c:  17 96        adiw r27:r26, 7                
L_183e:
  183e:  01 90        ld r0, Z+                      
  1840:  0d 92        st X+, r0                      
  1842:  8a 95        dec r24                        
  1844:  e1 f7        brne L_183e                    ; -> 0x183e
  1846:  86 e0        ldi r24, 0x06                  
  1848:  e8 e1        ldi r30, 0x18                  
  184a:  f1 e0        ldi r31, 0x01                  ; r31:r30 = 0x0118 (280)
  184c:  de 01        movw r27:r26, r29:r28          
  184e:  11 96        adiw r27:r26, 1                
L_1850:
  1850:  01 90        ld r0, Z+                      
  1852:  0d 92        st X+, r0                      
  1854:  8a 95        dec r24                        
  1856:  e1 f7        brne L_1850                    ; -> 0x1850
  1858:  ae 01        movw r21:r20, r29:r28          
  185a:  43 5f        subi r20, 0xf3                 
  185c:  5f 4f        sbci r21, 0xff                 
  185e:  70 e0        ldi r23, 0x00                  
  1860:  60 e0        ldi r22, 0x00                  ; r23:r22 = 0x0000 (0)
  1862:  89 e0        ldi r24, 0x09                  
  1864:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0009 (9)
  1866:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  186a:  60 91 fb 02  lds r22, 0x02fb                ; banco
  186e:  70 91 fc 02  lds r23, 0x02fc                ; v_02fc
  1872:  81 e0        ldi r24, 0x01                  
  1874:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0001 (1)
  1876:  0e 94 b5 07  call USR_tocar                 ; -> 0x0f6a
  187a:  ae 01        movw r21:r20, r29:r28          
  187c:  43 5f        subi r20, 0xf3                 
  187e:  5f 4f        sbci r21, 0xff                 
  1880:  61 e0        ldi r22, 0x01                  
  1882:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0001 (1)
  1884:  90 e0        ldi r25, 0x00                  
  1886:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  1888:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  188c:  63 e5        ldi r22, 0x53                  ; r23:r22 = 0x0053 (83)
  188e:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0053 (83)
  1890:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  1892:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  1894:  0e 94 7b 02  call delay                     ; -> 0x04f6
  1898:  ae 01        movw r21:r20, r29:r28          
  189a:  43 5f        subi r20, 0xf3                 
  189c:  5f 4f        sbci r21, 0xff                 
  189e:  61 e0        ldi r22, 0x01                  
  18a0:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0001 (1)
  18a2:  84 e0        ldi r24, 0x04                  
  18a4:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0004 (4)
  18a6:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  18aa:  63 e5        ldi r22, 0x53                  ; r23:r22 = 0x0053 (83)
  18ac:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0053 (83)
  18ae:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  18b0:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  18b2:  0e 94 7b 02  call delay                     ; -> 0x04f6
  18b6:  ae 01        movw r21:r20, r29:r28          
  18b8:  43 5f        subi r20, 0xf3                 
  18ba:  5f 4f        sbci r21, 0xff                 
  18bc:  65 e0        ldi r22, 0x05                  
  18be:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0005 (5)
  18c0:  84 e0        ldi r24, 0x04                  
  18c2:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0004 (4)
  18c4:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  18c8:  63 e5        ldi r22, 0x53                  ; r23:r22 = 0x0053 (83)
  18ca:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0053 (83)
  18cc:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  18ce:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  18d0:  0e 94 7b 02  call delay                     ; -> 0x04f6
  18d4:  ae 01        movw r21:r20, r29:r28          
  18d6:  43 5f        subi r20, 0xf3                 
  18d8:  5f 4f        sbci r21, 0xff                 
  18da:  62 e0        ldi r22, 0x02                  
  18dc:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0002 (2)
  18de:  82 e0        ldi r24, 0x02                  
  18e0:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0002 (2)
  18e2:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  18e6:  63 e5        ldi r22, 0x53                  ; r23:r22 = 0x0053 (83)
  18e8:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0053 (83)
  18ea:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  18ec:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  18ee:  0e 94 7b 02  call delay                     ; -> 0x04f6
  18f2:  ae 01        movw r21:r20, r29:r28          
  18f4:  43 5f        subi r20, 0xf3                 
  18f6:  5f 4f        sbci r21, 0xff                 
  18f8:  63 e0        ldi r22, 0x03                  
  18fa:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0003 (3)
  18fc:  90 e0        ldi r25, 0x00                  
  18fe:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  1900:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  1904:  63 e5        ldi r22, 0x53                  ; r23:r22 = 0x0053 (83)
  1906:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0053 (83)
  1908:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  190a:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  190c:  0e 94 7b 02  call delay                     ; -> 0x04f6
  1910:  ae 01        movw r21:r20, r29:r28          
  1912:  43 5f        subi r20, 0xf3                 
  1914:  5f 4f        sbci r21, 0xff                 
  1916:  63 e0        ldi r22, 0x03                  
  1918:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0003 (3)
  191a:  84 e0        ldi r24, 0x04                  
  191c:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0004 (4)
  191e:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  1922:  63 e5        ldi r22, 0x53                  ; r23:r22 = 0x0053 (83)
  1924:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0053 (83)
  1926:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  1928:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  192a:  0e 94 7b 02  call delay                     ; -> 0x04f6
  192e:  ae 01        movw r21:r20, r29:r28          
  1930:  43 5f        subi r20, 0xf3                 
  1932:  5f 4f        sbci r21, 0xff                 
  1934:  70 e0        ldi r23, 0x00                  
  1936:  60 e0        ldi r22, 0x00                  ; r23:r22 = 0x0000 (0)
  1938:  84 e0        ldi r24, 0x04                  
  193a:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0004 (4)
  193c:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  1940:  63 e5        ldi r22, 0x53                  ; r23:r22 = 0x0053 (83)
  1942:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0053 (83)
  1944:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  1946:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  1948:  0e 94 7b 02  call delay                     ; -> 0x04f6
  194c:  ae 01        movw r21:r20, r29:r28          
  194e:  43 5f        subi r20, 0xf3                 
  1950:  5f 4f        sbci r21, 0xff                 
  1952:  64 e0        ldi r22, 0x04                  
  1954:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0004 (4)
  1956:  84 e0        ldi r24, 0x04                  
  1958:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0004 (4)
  195a:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  195e:  63 e5        ldi r22, 0x53                  ; r23:r22 = 0x0053 (83)
  1960:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0053 (83)
  1962:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  1964:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  1966:  0e 94 7b 02  call delay                     ; -> 0x04f6
  196a:  ae 01        movw r21:r20, r29:r28          
  196c:  43 5f        subi r20, 0xf3                 
  196e:  5f 4f        sbci r21, 0xff                 
  1970:  66 e0        ldi r22, 0x06                  
  1972:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0006 (6)
  1974:  82 e0        ldi r24, 0x02                  
  1976:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0002 (2)
  1978:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  197c:  63 e5        ldi r22, 0x53                  ; r23:r22 = 0x0053 (83)
  197e:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0053 (83)
  1980:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  1982:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  1984:  0e 94 7b 02  call delay                     ; -> 0x04f6
  1988:  ae 01        movw r21:r20, r29:r28          
  198a:  43 5f        subi r20, 0xf3                 
  198c:  5f 4f        sbci r21, 0xff                 
  198e:  67 e0        ldi r22, 0x07                  
  1990:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0007 (7)
  1992:  90 e0        ldi r25, 0x00                  
  1994:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  1996:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  199a:  63 e5        ldi r22, 0x53                  ; r23:r22 = 0x0053 (83)
  199c:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0053 (83)
  199e:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  19a0:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  19a2:  0e 94 7b 02  call delay                     ; -> 0x04f6
  19a6:  ae 01        movw r21:r20, r29:r28          
  19a8:  43 5f        subi r20, 0xf3                 
  19aa:  5f 4f        sbci r21, 0xff                 
  19ac:  65 e0        ldi r22, 0x05                  
  19ae:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0005 (5)
  19b0:  90 e0        ldi r25, 0x00                  
  19b2:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  19b4:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  19b8:  63 e5        ldi r22, 0x53                  ; r23:r22 = 0x0053 (83)
  19ba:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0053 (83)
  19bc:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  19be:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  19c0:  0e 94 7b 02  call delay                     ; -> 0x04f6
  19c4:  ae 01        movw r21:r20, r29:r28          
  19c6:  43 5f        subi r20, 0xf3                 
  19c8:  5f 4f        sbci r21, 0xff                 
  19ca:  67 e0        ldi r22, 0x07                  
  19cc:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0007 (7)
  19ce:  84 e0        ldi r24, 0x04                  
  19d0:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0004 (4)
  19d2:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  19d6:  63 e5        ldi r22, 0x53                  ; r23:r22 = 0x0053 (83)
  19d8:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0053 (83)
  19da:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  19dc:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  19de:  0e 94 7b 02  call delay                     ; -> 0x04f6
  19e2:  ae 01        movw r21:r20, r29:r28          
  19e4:  49 5f        subi r20, 0xf9                 
  19e6:  5f 4f        sbci r21, 0xff                 
  19e8:  70 e0        ldi r23, 0x00                  
  19ea:  60 e0        ldi r22, 0x00                  ; r23:r22 = 0x0000 (0)
  19ec:  90 e0        ldi r25, 0x00                  
  19ee:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  19f0:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  19f4:  ae 01        movw r21:r20, r29:r28          
  19f6:  49 5f        subi r20, 0xf9                 
  19f8:  5f 4f        sbci r21, 0xff                 
  19fa:  70 e0        ldi r23, 0x00                  
  19fc:  60 e0        ldi r22, 0x00                  ; r23:r22 = 0x0000 (0)
  19fe:  81 e0        ldi r24, 0x01                  
  1a00:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0001 (1)
  1a02:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  1a06:  69 e2        ldi r22, 0x29                  ; r23:r22 = 0x0029 (41)
  1a08:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0029 (41)
  1a0a:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  1a0c:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  1a0e:  0e 94 7b 02  call delay                     ; -> 0x04f6
  1a12:  ae 01        movw r21:r20, r29:r28          
  1a14:  49 5f        subi r20, 0xf9                 
  1a16:  5f 4f        sbci r21, 0xff                 
  1a18:  61 e0        ldi r22, 0x01                  
  1a1a:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0001 (1)
  1a1c:  81 e0        ldi r24, 0x01                  
  1a1e:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0001 (1)
  1a20:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  1a24:  ae 01        movw r21:r20, r29:r28          
  1a26:  49 5f        subi r20, 0xf9                 
  1a28:  5f 4f        sbci r21, 0xff                 
  1a2a:  61 e0        ldi r22, 0x01                  
  1a2c:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0001 (1)
  1a2e:  82 e0        ldi r24, 0x02                  
  1a30:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0002 (2)
  1a32:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  1a36:  69 e2        ldi r22, 0x29                  ; r23:r22 = 0x0029 (41)
  1a38:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0029 (41)
  1a3a:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  1a3c:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  1a3e:  0e 94 7b 02  call delay                     ; -> 0x04f6
  1a42:  ae 01        movw r21:r20, r29:r28          
  1a44:  49 5f        subi r20, 0xf9                 
  1a46:  5f 4f        sbci r21, 0xff                 
  1a48:  62 e0        ldi r22, 0x02                  
  1a4a:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0002 (2)
  1a4c:  90 e0        ldi r25, 0x00                  
  1a4e:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  1a50:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  1a54:  ae 01        movw r21:r20, r29:r28          
  1a56:  49 5f        subi r20, 0xf9                 
  1a58:  5f 4f        sbci r21, 0xff                 
  1a5a:  62 e0        ldi r22, 0x02                  
  1a5c:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0002 (2)
  1a5e:  81 e0        ldi r24, 0x01                  
  1a60:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0001 (1)
  1a62:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  1a66:  69 e2        ldi r22, 0x29                  ; r23:r22 = 0x0029 (41)
  1a68:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0029 (41)
  1a6a:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  1a6c:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  1a6e:  0e 94 7b 02  call delay                     ; -> 0x04f6
  1a72:  ae 01        movw r21:r20, r29:r28          
  1a74:  49 5f        subi r20, 0xf9                 
  1a76:  5f 4f        sbci r21, 0xff                 
  1a78:  63 e0        ldi r22, 0x03                  
  1a7a:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0003 (3)
  1a7c:  81 e0        ldi r24, 0x01                  
  1a7e:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0001 (1)
  1a80:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  1a84:  ae 01        movw r21:r20, r29:r28          
  1a86:  49 5f        subi r20, 0xf9                 
  1a88:  5f 4f        sbci r21, 0xff                 
  1a8a:  63 e0        ldi r22, 0x03                  
  1a8c:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0003 (3)
  1a8e:  82 e0        ldi r24, 0x02                  
  1a90:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0002 (2)
  1a92:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  1a96:  69 e2        ldi r22, 0x29                  ; r23:r22 = 0x0029 (41)
  1a98:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0029 (41)
  1a9a:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  1a9c:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  1a9e:  0e 94 7b 02  call delay                     ; -> 0x04f6
  1aa2:  ae 01        movw r21:r20, r29:r28          
  1aa4:  49 5f        subi r20, 0xf9                 
  1aa6:  5f 4f        sbci r21, 0xff                 
  1aa8:  64 e0        ldi r22, 0x04                  
  1aaa:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0004 (4)
  1aac:  90 e0        ldi r25, 0x00                  
  1aae:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  1ab0:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  1ab4:  ae 01        movw r21:r20, r29:r28          
  1ab6:  49 5f        subi r20, 0xf9                 
  1ab8:  5f 4f        sbci r21, 0xff                 
  1aba:  64 e0        ldi r22, 0x04                  
  1abc:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0004 (4)
  1abe:  81 e0        ldi r24, 0x01                  
  1ac0:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0001 (1)
  1ac2:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  1ac6:  69 e2        ldi r22, 0x29                  ; r23:r22 = 0x0029 (41)
  1ac8:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0029 (41)
  1aca:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  1acc:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  1ace:  0e 94 7b 02  call delay                     ; -> 0x04f6
  1ad2:  ae 01        movw r21:r20, r29:r28          
  1ad4:  49 5f        subi r20, 0xf9                 
  1ad6:  5f 4f        sbci r21, 0xff                 
  1ad8:  65 e0        ldi r22, 0x05                  
  1ada:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0005 (5)
  1adc:  81 e0        ldi r24, 0x01                  
  1ade:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0001 (1)
  1ae0:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  1ae4:  ae 01        movw r21:r20, r29:r28          
  1ae6:  49 5f        subi r20, 0xf9                 
  1ae8:  5f 4f        sbci r21, 0xff                 
  1aea:  65 e0        ldi r22, 0x05                  
  1aec:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0005 (5)
  1aee:  82 e0        ldi r24, 0x02                  
  1af0:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0002 (2)
  1af2:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  1af6:  69 e2        ldi r22, 0x29                  ; r23:r22 = 0x0029 (41)
  1af8:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0029 (41)
  1afa:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  1afc:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  1afe:  0e 94 7b 02  call delay                     ; -> 0x04f6
  1b02:  ae 01        movw r21:r20, r29:r28          
  1b04:  49 5f        subi r20, 0xf9                 
  1b06:  5f 4f        sbci r21, 0xff                 
  1b08:  66 e0        ldi r22, 0x06                  
  1b0a:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0006 (6)
  1b0c:  90 e0        ldi r25, 0x00                  
  1b0e:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  1b10:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  1b14:  ae 01        movw r21:r20, r29:r28          
  1b16:  49 5f        subi r20, 0xf9                 
  1b18:  5f 4f        sbci r21, 0xff                 
  1b1a:  66 e0        ldi r22, 0x06                  
  1b1c:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0006 (6)
  1b1e:  81 e0        ldi r24, 0x01                  
  1b20:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0001 (1)
  1b22:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  1b26:  69 e2        ldi r22, 0x29                  ; r23:r22 = 0x0029 (41)
  1b28:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0029 (41)
  1b2a:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  1b2c:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  1b2e:  0e 94 7b 02  call delay                     ; -> 0x04f6
  1b32:  ae 01        movw r21:r20, r29:r28          
  1b34:  49 5f        subi r20, 0xf9                 
  1b36:  5f 4f        sbci r21, 0xff                 
  1b38:  67 e0        ldi r22, 0x07                  
  1b3a:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0007 (7)
  1b3c:  81 e0        ldi r24, 0x01                  
  1b3e:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0001 (1)
  1b40:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  1b44:  ae 01        movw r21:r20, r29:r28          
  1b46:  49 5f        subi r20, 0xf9                 
  1b48:  5f 4f        sbci r21, 0xff                 
  1b4a:  67 e0        ldi r22, 0x07                  
  1b4c:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0007 (7)
  1b4e:  82 e0        ldi r24, 0x02                  
  1b50:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0002 (2)
  1b52:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  1b56:  69 e2        ldi r22, 0x29                  ; r23:r22 = 0x0029 (41)
  1b58:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0029 (41)
  1b5a:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  1b5c:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  1b5e:  0e 94 7b 02  call delay                     ; -> 0x04f6
  1b62:  ae 01        movw r21:r20, r29:r28          
  1b64:  4f 5f        subi r20, 0xff                 
  1b66:  5f 4f        sbci r21, 0xff                 
  1b68:  67 e0        ldi r22, 0x07                  
  1b6a:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0007 (7)
  1b6c:  83 e0        ldi r24, 0x03                  
  1b6e:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0003 (3)
  1b70:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  1b74:  69 e2        ldi r22, 0x29                  ; r23:r22 = 0x0029 (41)
  1b76:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0029 (41)
  1b78:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  1b7a:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  1b7c:  0e 94 7b 02  call delay                     ; -> 0x04f6
  1b80:  ae 01        movw r21:r20, r29:r28          
  1b82:  4f 5f        subi r20, 0xff                 
  1b84:  5f 4f        sbci r21, 0xff                 
  1b86:  66 e0        ldi r22, 0x06                  
  1b88:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0006 (6)
  1b8a:  83 e0        ldi r24, 0x03                  
  1b8c:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0003 (3)
  1b8e:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  1b92:  ae 01        movw r21:r20, r29:r28          
  1b94:  4f 5f        subi r20, 0xff                 
  1b96:  5f 4f        sbci r21, 0xff                 
  1b98:  66 e0        ldi r22, 0x06                  
  1b9a:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0006 (6)
  1b9c:  84 e0        ldi r24, 0x04                  
  1b9e:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0004 (4)
  1ba0:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  1ba4:  69 e2        ldi r22, 0x29                  ; r23:r22 = 0x0029 (41)
  1ba6:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0029 (41)
  1ba8:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  1baa:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  1bac:  0e 94 7b 02  call delay                     ; -> 0x04f6
  1bb0:  ae 01        movw r21:r20, r29:r28          
  1bb2:  4f 5f        subi r20, 0xff                 
  1bb4:  5f 4f        sbci r21, 0xff                 
  1bb6:  65 e0        ldi r22, 0x05                  
  1bb8:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0005 (5)
  1bba:  83 e0        ldi r24, 0x03                  
  1bbc:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0003 (3)
  1bbe:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  1bc2:  69 e2        ldi r22, 0x29                  ; r23:r22 = 0x0029 (41)
  1bc4:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0029 (41)
  1bc6:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  1bc8:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  1bca:  0e 94 7b 02  call delay                     ; -> 0x04f6
  1bce:  ae 01        movw r21:r20, r29:r28          
  1bd0:  4f 5f        subi r20, 0xff                 
  1bd2:  5f 4f        sbci r21, 0xff                 
  1bd4:  64 e0        ldi r22, 0x04                  
  1bd6:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0004 (4)
  1bd8:  82 e0        ldi r24, 0x02                  
  1bda:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0002 (2)
  1bdc:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  1be0:  ae 01        movw r21:r20, r29:r28          
  1be2:  4f 5f        subi r20, 0xff                 
  1be4:  5f 4f        sbci r21, 0xff                 
  1be6:  64 e0        ldi r22, 0x04                  
  1be8:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0004 (4)
  1bea:  83 e0        ldi r24, 0x03                  
  1bec:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0003 (3)
  1bee:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  1bf2:  69 e2        ldi r22, 0x29                  ; r23:r22 = 0x0029 (41)
  1bf4:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0029 (41)
  1bf6:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  1bf8:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  1bfa:  0e 94 7b 02  call delay                     ; -> 0x04f6
  1bfe:  ae 01        movw r21:r20, r29:r28          
  1c00:  4f 5f        subi r20, 0xff                 
  1c02:  5f 4f        sbci r21, 0xff                 
  1c04:  63 e0        ldi r22, 0x03                  
  1c06:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0003 (3)
  1c08:  83 e0        ldi r24, 0x03                  
  1c0a:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0003 (3)
  1c0c:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  1c10:  69 e2        ldi r22, 0x29                  ; r23:r22 = 0x0029 (41)
  1c12:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0029 (41)
  1c14:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  1c16:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  1c18:  0e 94 7b 02  call delay                     ; -> 0x04f6
  1c1c:  ae 01        movw r21:r20, r29:r28          
  1c1e:  4f 5f        subi r20, 0xff                 
  1c20:  5f 4f        sbci r21, 0xff                 
  1c22:  62 e0        ldi r22, 0x02                  
  1c24:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0002 (2)
  1c26:  83 e0        ldi r24, 0x03                  
  1c28:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0003 (3)
  1c2a:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  1c2e:  ae 01        movw r21:r20, r29:r28          
  1c30:  4f 5f        subi r20, 0xff                 
  1c32:  5f 4f        sbci r21, 0xff                 
  1c34:  62 e0        ldi r22, 0x02                  
  1c36:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0002 (2)
  1c38:  84 e0        ldi r24, 0x04                  
  1c3a:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0004 (4)
  1c3c:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  1c40:  69 e2        ldi r22, 0x29                  ; r23:r22 = 0x0029 (41)
  1c42:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0029 (41)
  1c44:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  1c46:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  1c48:  0e 94 7b 02  call delay                     ; -> 0x04f6
  1c4c:  ae 01        movw r21:r20, r29:r28          
  1c4e:  4f 5f        subi r20, 0xff                 
  1c50:  5f 4f        sbci r21, 0xff                 
  1c52:  61 e0        ldi r22, 0x01                  
  1c54:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0001 (1)
  1c56:  83 e0        ldi r24, 0x03                  
  1c58:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0003 (3)
  1c5a:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  1c5e:  69 e2        ldi r22, 0x29                  ; r23:r22 = 0x0029 (41)
  1c60:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0029 (41)
  1c62:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  1c64:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  1c66:  0e 94 7b 02  call delay                     ; -> 0x04f6
  1c6a:  ae 01        movw r21:r20, r29:r28          
  1c6c:  4f 5f        subi r20, 0xff                 
  1c6e:  5f 4f        sbci r21, 0xff                 
  1c70:  70 e0        ldi r23, 0x00                  
  1c72:  60 e0        ldi r22, 0x00                  ; r23:r22 = 0x0000 (0)
  1c74:  82 e0        ldi r24, 0x02                  
  1c76:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0002 (2)
  1c78:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  1c7c:  ae 01        movw r21:r20, r29:r28          
  1c7e:  4f 5f        subi r20, 0xff                 
  1c80:  5f 4f        sbci r21, 0xff                 
  1c82:  70 e0        ldi r23, 0x00                  
  1c84:  60 e0        ldi r22, 0x00                  ; r23:r22 = 0x0000 (0)
  1c86:  83 e0        ldi r24, 0x03                  
  1c88:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0003 (3)
  1c8a:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  1c8e:  69 e2        ldi r22, 0x29                  ; r23:r22 = 0x0029 (41)
  1c90:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0029 (41)
  1c92:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  1c94:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  1c96:  0e 94 7b 02  call delay                     ; -> 0x04f6
  1c9a:  ae 01        movw r21:r20, r29:r28          
  1c9c:  43 5f        subi r20, 0xf3                 
  1c9e:  5f 4f        sbci r21, 0xff                 
  1ca0:  70 e0        ldi r23, 0x00                  
  1ca2:  60 e0        ldi r22, 0x00                  ; r23:r22 = 0x0000 (0)
  1ca4:  89 e0        ldi r24, 0x09                  
  1ca6:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0009 (9)
  1ca8:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  1cac:  ae 01        movw r21:r20, r29:r28          
  1cae:  43 5f        subi r20, 0xf3                 
  1cb0:  5f 4f        sbci r21, 0xff                 
  1cb2:  61 e0        ldi r22, 0x01                  
  1cb4:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0001 (1)
  1cb6:  90 e0        ldi r25, 0x00                  
  1cb8:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  1cba:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  1cbe:  63 e5        ldi r22, 0x53                  ; r23:r22 = 0x0053 (83)
  1cc0:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0053 (83)
  1cc2:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  1cc4:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  1cc6:  0e 94 7b 02  call delay                     ; -> 0x04f6
  1cca:  ae 01        movw r21:r20, r29:r28          
  1ccc:  43 5f        subi r20, 0xf3                 
  1cce:  5f 4f        sbci r21, 0xff                 
  1cd0:  61 e0        ldi r22, 0x01                  
  1cd2:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0001 (1)
  1cd4:  84 e0        ldi r24, 0x04                  
  1cd6:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0004 (4)
  1cd8:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  1cdc:  63 e5        ldi r22, 0x53                  ; r23:r22 = 0x0053 (83)
  1cde:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0053 (83)
  1ce0:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  1ce2:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  1ce4:  0e 94 7b 02  call delay                     ; -> 0x04f6
  1ce8:  ae 01        movw r21:r20, r29:r28          
  1cea:  43 5f        subi r20, 0xf3                 
  1cec:  5f 4f        sbci r21, 0xff                 
  1cee:  65 e0        ldi r22, 0x05                  
  1cf0:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0005 (5)
  1cf2:  84 e0        ldi r24, 0x04                  
  1cf4:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0004 (4)
  1cf6:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  1cfa:  63 e5        ldi r22, 0x53                  ; r23:r22 = 0x0053 (83)
  1cfc:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0053 (83)
  1cfe:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  1d00:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  1d02:  0e 94 7b 02  call delay                     ; -> 0x04f6
  1d06:  ae 01        movw r21:r20, r29:r28          
  1d08:  43 5f        subi r20, 0xf3                 
  1d0a:  5f 4f        sbci r21, 0xff                 
  1d0c:  62 e0        ldi r22, 0x02                  
  1d0e:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0002 (2)
  1d10:  82 e0        ldi r24, 0x02                  
  1d12:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0002 (2)
  1d14:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  1d18:  63 e5        ldi r22, 0x53                  ; r23:r22 = 0x0053 (83)
  1d1a:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0053 (83)
  1d1c:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  1d1e:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  1d20:  0e 94 7b 02  call delay                     ; -> 0x04f6
  1d24:  ae 01        movw r21:r20, r29:r28          
  1d26:  43 5f        subi r20, 0xf3                 
  1d28:  5f 4f        sbci r21, 0xff                 
  1d2a:  63 e0        ldi r22, 0x03                  
  1d2c:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0003 (3)
  1d2e:  90 e0        ldi r25, 0x00                  
  1d30:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  1d32:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  1d36:  63 e5        ldi r22, 0x53                  ; r23:r22 = 0x0053 (83)
  1d38:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0053 (83)
  1d3a:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  1d3c:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  1d3e:  0e 94 7b 02  call delay                     ; -> 0x04f6
  1d42:  ae 01        movw r21:r20, r29:r28          
  1d44:  43 5f        subi r20, 0xf3                 
  1d46:  5f 4f        sbci r21, 0xff                 
  1d48:  63 e0        ldi r22, 0x03                  
  1d4a:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0003 (3)
  1d4c:  84 e0        ldi r24, 0x04                  
  1d4e:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0004 (4)
  1d50:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  1d54:  63 e5        ldi r22, 0x53                  ; r23:r22 = 0x0053 (83)
  1d56:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0053 (83)
  1d58:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  1d5a:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  1d5c:  0e 94 7b 02  call delay                     ; -> 0x04f6
  1d60:  ae 01        movw r21:r20, r29:r28          
  1d62:  43 5f        subi r20, 0xf3                 
  1d64:  5f 4f        sbci r21, 0xff                 
  1d66:  70 e0        ldi r23, 0x00                  
  1d68:  60 e0        ldi r22, 0x00                  ; r23:r22 = 0x0000 (0)
  1d6a:  84 e0        ldi r24, 0x04                  
  1d6c:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0004 (4)
  1d6e:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  1d72:  63 e5        ldi r22, 0x53                  ; r23:r22 = 0x0053 (83)
  1d74:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0053 (83)
  1d76:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  1d78:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  1d7a:  0e 94 7b 02  call delay                     ; -> 0x04f6
  1d7e:  ae 01        movw r21:r20, r29:r28          
  1d80:  43 5f        subi r20, 0xf3                 
  1d82:  5f 4f        sbci r21, 0xff                 
  1d84:  64 e0        ldi r22, 0x04                  
  1d86:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0004 (4)
  1d88:  84 e0        ldi r24, 0x04                  
  1d8a:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0004 (4)
  1d8c:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  1d90:  63 e5        ldi r22, 0x53                  ; r23:r22 = 0x0053 (83)
  1d92:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0053 (83)
  1d94:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  1d96:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  1d98:  0e 94 7b 02  call delay                     ; -> 0x04f6
  1d9c:  ae 01        movw r21:r20, r29:r28          
  1d9e:  43 5f        subi r20, 0xf3                 
  1da0:  5f 4f        sbci r21, 0xff                 
  1da2:  66 e0        ldi r22, 0x06                  
  1da4:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0006 (6)
  1da6:  82 e0        ldi r24, 0x02                  
  1da8:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0002 (2)
  1daa:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  1dae:  63 e5        ldi r22, 0x53                  ; r23:r22 = 0x0053 (83)
  1db0:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0053 (83)
  1db2:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  1db4:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  1db6:  0e 94 7b 02  call delay                     ; -> 0x04f6
  1dba:  ae 01        movw r21:r20, r29:r28          
  1dbc:  43 5f        subi r20, 0xf3                 
  1dbe:  5f 4f        sbci r21, 0xff                 
  1dc0:  67 e0        ldi r22, 0x07                  
  1dc2:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0007 (7)
  1dc4:  90 e0        ldi r25, 0x00                  
  1dc6:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  1dc8:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  1dcc:  63 e5        ldi r22, 0x53                  ; r23:r22 = 0x0053 (83)
  1dce:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0053 (83)
  1dd0:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  1dd2:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  1dd4:  0e 94 7b 02  call delay                     ; -> 0x04f6
  1dd8:  ae 01        movw r21:r20, r29:r28          
  1dda:  43 5f        subi r20, 0xf3                 
  1ddc:  5f 4f        sbci r21, 0xff                 
  1dde:  65 e0        ldi r22, 0x05                  
  1de0:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0005 (5)
  1de2:  90 e0        ldi r25, 0x00                  
  1de4:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  1de6:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  1dea:  63 e5        ldi r22, 0x53                  ; r23:r22 = 0x0053 (83)
  1dec:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0053 (83)
  1dee:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  1df0:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  1df2:  0e 94 7b 02  call delay                     ; -> 0x04f6
  1df6:  ae 01        movw r21:r20, r29:r28          
  1df8:  43 5f        subi r20, 0xf3                 
  1dfa:  5f 4f        sbci r21, 0xff                 
  1dfc:  67 e0        ldi r22, 0x07                  
  1dfe:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0007 (7)
  1e00:  84 e0        ldi r24, 0x04                  
  1e02:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0004 (4)
  1e04:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  1e08:  63 e5        ldi r22, 0x53                  ; r23:r22 = 0x0053 (83)
  1e0a:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0053 (83)
  1e0c:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  1e0e:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  1e10:  0e 94 7b 02  call delay                     ; -> 0x04f6
  1e14:  ae 01        movw r21:r20, r29:r28          
  1e16:  49 5f        subi r20, 0xf9                 
  1e18:  5f 4f        sbci r21, 0xff                 
  1e1a:  70 e0        ldi r23, 0x00                  
  1e1c:  60 e0        ldi r22, 0x00                  ; r23:r22 = 0x0000 (0)
  1e1e:  90 e0        ldi r25, 0x00                  
  1e20:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  1e22:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  1e26:  ae 01        movw r21:r20, r29:r28          
  1e28:  49 5f        subi r20, 0xf9                 
  1e2a:  5f 4f        sbci r21, 0xff                 
  1e2c:  70 e0        ldi r23, 0x00                  
  1e2e:  60 e0        ldi r22, 0x00                  ; r23:r22 = 0x0000 (0)
  1e30:  81 e0        ldi r24, 0x01                  
  1e32:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0001 (1)
  1e34:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  1e38:  69 e2        ldi r22, 0x29                  ; r23:r22 = 0x0029 (41)
  1e3a:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0029 (41)
  1e3c:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  1e3e:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  1e40:  0e 94 7b 02  call delay                     ; -> 0x04f6
  1e44:  ae 01        movw r21:r20, r29:r28          
  1e46:  49 5f        subi r20, 0xf9                 
  1e48:  5f 4f        sbci r21, 0xff                 
  1e4a:  61 e0        ldi r22, 0x01                  
  1e4c:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0001 (1)
  1e4e:  81 e0        ldi r24, 0x01                  
  1e50:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0001 (1)
  1e52:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  1e56:  ae 01        movw r21:r20, r29:r28          
  1e58:  49 5f        subi r20, 0xf9                 
  1e5a:  5f 4f        sbci r21, 0xff                 
  1e5c:  61 e0        ldi r22, 0x01                  
  1e5e:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0001 (1)
  1e60:  82 e0        ldi r24, 0x02                  
  1e62:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0002 (2)
  1e64:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  1e68:  69 e2        ldi r22, 0x29                  ; r23:r22 = 0x0029 (41)
  1e6a:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0029 (41)
  1e6c:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  1e6e:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  1e70:  0e 94 7b 02  call delay                     ; -> 0x04f6
  1e74:  ae 01        movw r21:r20, r29:r28          
  1e76:  49 5f        subi r20, 0xf9                 
  1e78:  5f 4f        sbci r21, 0xff                 
  1e7a:  62 e0        ldi r22, 0x02                  
  1e7c:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0002 (2)
  1e7e:  90 e0        ldi r25, 0x00                  
  1e80:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  1e82:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  1e86:  ae 01        movw r21:r20, r29:r28          
  1e88:  49 5f        subi r20, 0xf9                 
  1e8a:  5f 4f        sbci r21, 0xff                 
  1e8c:  62 e0        ldi r22, 0x02                  
  1e8e:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0002 (2)
  1e90:  81 e0        ldi r24, 0x01                  
  1e92:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0001 (1)
  1e94:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  1e98:  69 e2        ldi r22, 0x29                  ; r23:r22 = 0x0029 (41)
  1e9a:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0029 (41)
  1e9c:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  1e9e:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  1ea0:  0e 94 7b 02  call delay                     ; -> 0x04f6
  1ea4:  ae 01        movw r21:r20, r29:r28          
  1ea6:  49 5f        subi r20, 0xf9                 
  1ea8:  5f 4f        sbci r21, 0xff                 
  1eaa:  63 e0        ldi r22, 0x03                  
  1eac:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0003 (3)
  1eae:  81 e0        ldi r24, 0x01                  
  1eb0:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0001 (1)
  1eb2:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  1eb6:  ae 01        movw r21:r20, r29:r28          
  1eb8:  49 5f        subi r20, 0xf9                 
  1eba:  5f 4f        sbci r21, 0xff                 
  1ebc:  63 e0        ldi r22, 0x03                  
  1ebe:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0003 (3)
  1ec0:  82 e0        ldi r24, 0x02                  
  1ec2:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0002 (2)
  1ec4:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  1ec8:  69 e2        ldi r22, 0x29                  ; r23:r22 = 0x0029 (41)
  1eca:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0029 (41)
  1ecc:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  1ece:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  1ed0:  0e 94 7b 02  call delay                     ; -> 0x04f6
  1ed4:  ae 01        movw r21:r20, r29:r28          
  1ed6:  49 5f        subi r20, 0xf9                 
  1ed8:  5f 4f        sbci r21, 0xff                 
  1eda:  64 e0        ldi r22, 0x04                  
  1edc:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0004 (4)
  1ede:  90 e0        ldi r25, 0x00                  
  1ee0:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  1ee2:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  1ee6:  ae 01        movw r21:r20, r29:r28          
  1ee8:  49 5f        subi r20, 0xf9                 
  1eea:  5f 4f        sbci r21, 0xff                 
  1eec:  64 e0        ldi r22, 0x04                  
  1eee:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0004 (4)
  1ef0:  81 e0        ldi r24, 0x01                  
  1ef2:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0001 (1)
  1ef4:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  1ef8:  69 e2        ldi r22, 0x29                  ; r23:r22 = 0x0029 (41)
  1efa:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0029 (41)
  1efc:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  1efe:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  1f00:  0e 94 7b 02  call delay                     ; -> 0x04f6
  1f04:  ae 01        movw r21:r20, r29:r28          
  1f06:  49 5f        subi r20, 0xf9                 
  1f08:  5f 4f        sbci r21, 0xff                 
  1f0a:  65 e0        ldi r22, 0x05                  
  1f0c:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0005 (5)
  1f0e:  81 e0        ldi r24, 0x01                  
  1f10:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0001 (1)
  1f12:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  1f16:  ae 01        movw r21:r20, r29:r28          
  1f18:  49 5f        subi r20, 0xf9                 
  1f1a:  5f 4f        sbci r21, 0xff                 
  1f1c:  65 e0        ldi r22, 0x05                  
  1f1e:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0005 (5)
  1f20:  82 e0        ldi r24, 0x02                  
  1f22:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0002 (2)
  1f24:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  1f28:  69 e2        ldi r22, 0x29                  ; r23:r22 = 0x0029 (41)
  1f2a:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0029 (41)
  1f2c:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  1f2e:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  1f30:  0e 94 7b 02  call delay                     ; -> 0x04f6
  1f34:  ae 01        movw r21:r20, r29:r28          
  1f36:  49 5f        subi r20, 0xf9                 
  1f38:  5f 4f        sbci r21, 0xff                 
  1f3a:  66 e0        ldi r22, 0x06                  
  1f3c:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0006 (6)
  1f3e:  90 e0        ldi r25, 0x00                  
  1f40:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  1f42:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  1f46:  ae 01        movw r21:r20, r29:r28          
  1f48:  49 5f        subi r20, 0xf9                 
  1f4a:  5f 4f        sbci r21, 0xff                 
  1f4c:  66 e0        ldi r22, 0x06                  
  1f4e:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0006 (6)
  1f50:  81 e0        ldi r24, 0x01                  
  1f52:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0001 (1)
  1f54:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  1f58:  69 e2        ldi r22, 0x29                  ; r23:r22 = 0x0029 (41)
  1f5a:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0029 (41)
  1f5c:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  1f5e:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  1f60:  0e 94 7b 02  call delay                     ; -> 0x04f6
  1f64:  ae 01        movw r21:r20, r29:r28          
  1f66:  49 5f        subi r20, 0xf9                 
  1f68:  5f 4f        sbci r21, 0xff                 
  1f6a:  67 e0        ldi r22, 0x07                  
  1f6c:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0007 (7)
  1f6e:  81 e0        ldi r24, 0x01                  
  1f70:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0001 (1)
  1f72:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  1f76:  ae 01        movw r21:r20, r29:r28          
  1f78:  49 5f        subi r20, 0xf9                 
  1f7a:  5f 4f        sbci r21, 0xff                 
  1f7c:  67 e0        ldi r22, 0x07                  
  1f7e:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0007 (7)
  1f80:  82 e0        ldi r24, 0x02                  
  1f82:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0002 (2)
  1f84:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  1f88:  69 e2        ldi r22, 0x29                  ; r23:r22 = 0x0029 (41)
  1f8a:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0029 (41)
  1f8c:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  1f8e:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  1f90:  0e 94 7b 02  call delay                     ; -> 0x04f6
  1f94:  ae 01        movw r21:r20, r29:r28          
  1f96:  4f 5f        subi r20, 0xff                 
  1f98:  5f 4f        sbci r21, 0xff                 
  1f9a:  67 e0        ldi r22, 0x07                  
  1f9c:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0007 (7)
  1f9e:  83 e0        ldi r24, 0x03                  
  1fa0:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0003 (3)
  1fa2:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  1fa6:  69 e2        ldi r22, 0x29                  ; r23:r22 = 0x0029 (41)
  1fa8:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0029 (41)
  1faa:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  1fac:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  1fae:  0e 94 7b 02  call delay                     ; -> 0x04f6
  1fb2:  ae 01        movw r21:r20, r29:r28          
  1fb4:  4f 5f        subi r20, 0xff                 
  1fb6:  5f 4f        sbci r21, 0xff                 
  1fb8:  66 e0        ldi r22, 0x06                  
  1fba:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0006 (6)
  1fbc:  83 e0        ldi r24, 0x03                  
  1fbe:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0003 (3)
  1fc0:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  1fc4:  ae 01        movw r21:r20, r29:r28          
  1fc6:  4f 5f        subi r20, 0xff                 
  1fc8:  5f 4f        sbci r21, 0xff                 
  1fca:  66 e0        ldi r22, 0x06                  
  1fcc:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0006 (6)
  1fce:  84 e0        ldi r24, 0x04                  
  1fd0:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0004 (4)
  1fd2:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  1fd6:  69 e2        ldi r22, 0x29                  ; r23:r22 = 0x0029 (41)
  1fd8:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0029 (41)
  1fda:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  1fdc:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  1fde:  0e 94 7b 02  call delay                     ; -> 0x04f6
  1fe2:  ae 01        movw r21:r20, r29:r28          
  1fe4:  4f 5f        subi r20, 0xff                 
  1fe6:  5f 4f        sbci r21, 0xff                 
  1fe8:  65 e0        ldi r22, 0x05                  
  1fea:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0005 (5)
  1fec:  83 e0        ldi r24, 0x03                  
  1fee:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0003 (3)
  1ff0:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  1ff4:  69 e2        ldi r22, 0x29                  ; r23:r22 = 0x0029 (41)
  1ff6:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0029 (41)
  1ff8:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  1ffa:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  1ffc:  0e 94 7b 02  call delay                     ; -> 0x04f6
  2000:  ae 01        movw r21:r20, r29:r28          
  2002:  4f 5f        subi r20, 0xff                 
  2004:  5f 4f        sbci r21, 0xff                 
  2006:  64 e0        ldi r22, 0x04                  
  2008:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0004 (4)
  200a:  82 e0        ldi r24, 0x02                  
  200c:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0002 (2)
  200e:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  2012:  ae 01        movw r21:r20, r29:r28          
  2014:  4f 5f        subi r20, 0xff                 
  2016:  5f 4f        sbci r21, 0xff                 
  2018:  64 e0        ldi r22, 0x04                  
  201a:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0004 (4)
  201c:  83 e0        ldi r24, 0x03                  
  201e:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0003 (3)
  2020:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  2024:  69 e2        ldi r22, 0x29                  ; r23:r22 = 0x0029 (41)
  2026:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0029 (41)
  2028:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  202a:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  202c:  0e 94 7b 02  call delay                     ; -> 0x04f6
  2030:  ae 01        movw r21:r20, r29:r28          
  2032:  4f 5f        subi r20, 0xff                 
  2034:  5f 4f        sbci r21, 0xff                 
  2036:  63 e0        ldi r22, 0x03                  
  2038:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0003 (3)
  203a:  83 e0        ldi r24, 0x03                  
  203c:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0003 (3)
  203e:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  2042:  69 e2        ldi r22, 0x29                  ; r23:r22 = 0x0029 (41)
  2044:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0029 (41)
  2046:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  2048:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  204a:  0e 94 7b 02  call delay                     ; -> 0x04f6
  204e:  ae 01        movw r21:r20, r29:r28          
  2050:  4f 5f        subi r20, 0xff                 
  2052:  5f 4f        sbci r21, 0xff                 
  2054:  62 e0        ldi r22, 0x02                  
  2056:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0002 (2)
  2058:  83 e0        ldi r24, 0x03                  
  205a:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0003 (3)
  205c:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  2060:  ae 01        movw r21:r20, r29:r28          
  2062:  4f 5f        subi r20, 0xff                 
  2064:  5f 4f        sbci r21, 0xff                 
  2066:  62 e0        ldi r22, 0x02                  
  2068:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0002 (2)
  206a:  84 e0        ldi r24, 0x04                  
  206c:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0004 (4)
  206e:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  2072:  69 e2        ldi r22, 0x29                  ; r23:r22 = 0x0029 (41)
  2074:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0029 (41)
  2076:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  2078:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  207a:  0e 94 7b 02  call delay                     ; -> 0x04f6
  207e:  ae 01        movw r21:r20, r29:r28          
  2080:  4f 5f        subi r20, 0xff                 
  2082:  5f 4f        sbci r21, 0xff                 
  2084:  61 e0        ldi r22, 0x01                  
  2086:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0001 (1)
  2088:  83 e0        ldi r24, 0x03                  
  208a:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0003 (3)
  208c:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  2090:  69 e2        ldi r22, 0x29                  ; r23:r22 = 0x0029 (41)
  2092:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0029 (41)
  2094:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  2096:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  2098:  0e 94 7b 02  call delay                     ; -> 0x04f6
  209c:  ae 01        movw r21:r20, r29:r28          
  209e:  4f 5f        subi r20, 0xff                 
  20a0:  5f 4f        sbci r21, 0xff                 
  20a2:  70 e0        ldi r23, 0x00                  
  20a4:  60 e0        ldi r22, 0x00                  ; r23:r22 = 0x0000 (0)
  20a6:  82 e0        ldi r24, 0x02                  
  20a8:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0002 (2)
  20aa:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  20ae:  ae 01        movw r21:r20, r29:r28          
  20b0:  4f 5f        subi r20, 0xff                 
  20b2:  5f 4f        sbci r21, 0xff                 
  20b4:  70 e0        ldi r23, 0x00                  
  20b6:  60 e0        ldi r22, 0x00                  ; r23:r22 = 0x0000 (0)
  20b8:  83 e0        ldi r24, 0x03                  
  20ba:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0003 (3)
  20bc:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  20c0:  69 e2        ldi r22, 0x29                  ; r23:r22 = 0x0029 (41)
  20c2:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0029 (41)
  20c4:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  20c6:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  20c8:  0e 94 7b 02  call delay                     ; -> 0x04f6
  20cc:  ae 01        movw r21:r20, r29:r28          
  20ce:  43 5f        subi r20, 0xf3                 
  20d0:  5f 4f        sbci r21, 0xff                 
  20d2:  70 e0        ldi r23, 0x00                  
  20d4:  60 e0        ldi r22, 0x00                  ; r23:r22 = 0x0000 (0)
  20d6:  89 e0        ldi r24, 0x09                  
  20d8:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0009 (9)
  20da:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  20de:  ae 01        movw r21:r20, r29:r28          
  20e0:  43 5f        subi r20, 0xf3                 
  20e2:  5f 4f        sbci r21, 0xff                 
  20e4:  61 e0        ldi r22, 0x01                  
  20e6:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0001 (1)
  20e8:  90 e0        ldi r25, 0x00                  
  20ea:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  20ec:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  20f0:  63 e5        ldi r22, 0x53                  ; r23:r22 = 0x0053 (83)
  20f2:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0053 (83)
  20f4:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  20f6:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  20f8:  0e 94 7b 02  call delay                     ; -> 0x04f6
  20fc:  ae 01        movw r21:r20, r29:r28          
  20fe:  43 5f        subi r20, 0xf3                 
  2100:  5f 4f        sbci r21, 0xff                 
  2102:  61 e0        ldi r22, 0x01                  
  2104:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0001 (1)
  2106:  84 e0        ldi r24, 0x04                  
  2108:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0004 (4)
  210a:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  210e:  63 e5        ldi r22, 0x53                  ; r23:r22 = 0x0053 (83)
  2110:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0053 (83)
  2112:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  2114:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  2116:  0e 94 7b 02  call delay                     ; -> 0x04f6
  211a:  ae 01        movw r21:r20, r29:r28          
  211c:  43 5f        subi r20, 0xf3                 
  211e:  5f 4f        sbci r21, 0xff                 
  2120:  65 e0        ldi r22, 0x05                  
  2122:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0005 (5)
  2124:  84 e0        ldi r24, 0x04                  
  2126:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0004 (4)
  2128:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  212c:  63 e5        ldi r22, 0x53                  ; r23:r22 = 0x0053 (83)
  212e:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0053 (83)
  2130:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  2132:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  2134:  0e 94 7b 02  call delay                     ; -> 0x04f6
  2138:  ae 01        movw r21:r20, r29:r28          
  213a:  43 5f        subi r20, 0xf3                 
  213c:  5f 4f        sbci r21, 0xff                 
  213e:  62 e0        ldi r22, 0x02                  
  2140:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0002 (2)
  2142:  82 e0        ldi r24, 0x02                  
  2144:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0002 (2)
  2146:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  214a:  63 e5        ldi r22, 0x53                  ; r23:r22 = 0x0053 (83)
  214c:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0053 (83)
  214e:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  2150:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  2152:  0e 94 7b 02  call delay                     ; -> 0x04f6
  2156:  ae 01        movw r21:r20, r29:r28          
  2158:  43 5f        subi r20, 0xf3                 
  215a:  5f 4f        sbci r21, 0xff                 
  215c:  63 e0        ldi r22, 0x03                  
  215e:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0003 (3)
  2160:  90 e0        ldi r25, 0x00                  
  2162:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  2164:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  2168:  63 e5        ldi r22, 0x53                  ; r23:r22 = 0x0053 (83)
  216a:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0053 (83)
  216c:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  216e:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  2170:  0e 94 7b 02  call delay                     ; -> 0x04f6
  2174:  ae 01        movw r21:r20, r29:r28          
  2176:  43 5f        subi r20, 0xf3                 
  2178:  5f 4f        sbci r21, 0xff                 
  217a:  63 e0        ldi r22, 0x03                  
  217c:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0003 (3)
  217e:  84 e0        ldi r24, 0x04                  
  2180:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0004 (4)
  2182:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  2186:  63 e5        ldi r22, 0x53                  ; r23:r22 = 0x0053 (83)
  2188:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0053 (83)
  218a:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  218c:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  218e:  0e 94 7b 02  call delay                     ; -> 0x04f6
  2192:  ae 01        movw r21:r20, r29:r28          
  2194:  43 5f        subi r20, 0xf3                 
  2196:  5f 4f        sbci r21, 0xff                 
  2198:  70 e0        ldi r23, 0x00                  
  219a:  60 e0        ldi r22, 0x00                  ; r23:r22 = 0x0000 (0)
  219c:  84 e0        ldi r24, 0x04                  
  219e:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0004 (4)
  21a0:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  21a4:  63 e5        ldi r22, 0x53                  ; r23:r22 = 0x0053 (83)
  21a6:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0053 (83)
  21a8:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  21aa:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  21ac:  0e 94 7b 02  call delay                     ; -> 0x04f6
  21b0:  ae 01        movw r21:r20, r29:r28          
  21b2:  43 5f        subi r20, 0xf3                 
  21b4:  5f 4f        sbci r21, 0xff                 
  21b6:  64 e0        ldi r22, 0x04                  
  21b8:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0004 (4)
  21ba:  84 e0        ldi r24, 0x04                  
  21bc:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0004 (4)
  21be:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  21c2:  63 e5        ldi r22, 0x53                  ; r23:r22 = 0x0053 (83)
  21c4:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0053 (83)
  21c6:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  21c8:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  21ca:  0e 94 7b 02  call delay                     ; -> 0x04f6
  21ce:  ae 01        movw r21:r20, r29:r28          
  21d0:  43 5f        subi r20, 0xf3                 
  21d2:  5f 4f        sbci r21, 0xff                 
  21d4:  66 e0        ldi r22, 0x06                  
  21d6:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0006 (6)
  21d8:  82 e0        ldi r24, 0x02                  
  21da:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0002 (2)
  21dc:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  21e0:  63 e5        ldi r22, 0x53                  ; r23:r22 = 0x0053 (83)
  21e2:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0053 (83)
  21e4:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  21e6:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  21e8:  0e 94 7b 02  call delay                     ; -> 0x04f6
  21ec:  ae 01        movw r21:r20, r29:r28          
  21ee:  43 5f        subi r20, 0xf3                 
  21f0:  5f 4f        sbci r21, 0xff                 
  21f2:  67 e0        ldi r22, 0x07                  
  21f4:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0007 (7)
  21f6:  90 e0        ldi r25, 0x00                  
  21f8:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  21fa:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  21fe:  63 e5        ldi r22, 0x53                  ; r23:r22 = 0x0053 (83)
  2200:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0053 (83)
  2202:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  2204:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  2206:  0e 94 7b 02  call delay                     ; -> 0x04f6
  220a:  ae 01        movw r21:r20, r29:r28          
  220c:  43 5f        subi r20, 0xf3                 
  220e:  5f 4f        sbci r21, 0xff                 
  2210:  65 e0        ldi r22, 0x05                  
  2212:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0005 (5)
  2214:  90 e0        ldi r25, 0x00                  
  2216:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  2218:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  221c:  63 e5        ldi r22, 0x53                  ; r23:r22 = 0x0053 (83)
  221e:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0053 (83)
  2220:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  2222:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  2224:  0e 94 7b 02  call delay                     ; -> 0x04f6
  2228:  ae 01        movw r21:r20, r29:r28          
  222a:  43 5f        subi r20, 0xf3                 
  222c:  5f 4f        sbci r21, 0xff                 
  222e:  67 e0        ldi r22, 0x07                  
  2230:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0007 (7)
  2232:  84 e0        ldi r24, 0x04                  
  2234:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0004 (4)
  2236:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  223a:  63 e5        ldi r22, 0x53                  ; r23:r22 = 0x0053 (83)
  223c:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0053 (83)
  223e:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  2240:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  2242:  0e 94 7b 02  call delay                     ; -> 0x04f6
  2246:  ae 01        movw r21:r20, r29:r28          
  2248:  49 5f        subi r20, 0xf9                 
  224a:  5f 4f        sbci r21, 0xff                 
  224c:  70 e0        ldi r23, 0x00                  
  224e:  60 e0        ldi r22, 0x00                  ; r23:r22 = 0x0000 (0)
  2250:  90 e0        ldi r25, 0x00                  
  2252:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  2254:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  2258:  ae 01        movw r21:r20, r29:r28          
  225a:  49 5f        subi r20, 0xf9                 
  225c:  5f 4f        sbci r21, 0xff                 
  225e:  70 e0        ldi r23, 0x00                  
  2260:  60 e0        ldi r22, 0x00                  ; r23:r22 = 0x0000 (0)
  2262:  81 e0        ldi r24, 0x01                  
  2264:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0001 (1)
  2266:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  226a:  69 e2        ldi r22, 0x29                  ; r23:r22 = 0x0029 (41)
  226c:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0029 (41)
  226e:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  2270:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  2272:  0e 94 7b 02  call delay                     ; -> 0x04f6
  2276:  ae 01        movw r21:r20, r29:r28          
  2278:  49 5f        subi r20, 0xf9                 
  227a:  5f 4f        sbci r21, 0xff                 
  227c:  61 e0        ldi r22, 0x01                  
  227e:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0001 (1)
  2280:  81 e0        ldi r24, 0x01                  
  2282:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0001 (1)
  2284:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  2288:  ae 01        movw r21:r20, r29:r28          
  228a:  49 5f        subi r20, 0xf9                 
  228c:  5f 4f        sbci r21, 0xff                 
  228e:  61 e0        ldi r22, 0x01                  
  2290:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0001 (1)
  2292:  82 e0        ldi r24, 0x02                  
  2294:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0002 (2)
  2296:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  229a:  69 e2        ldi r22, 0x29                  ; r23:r22 = 0x0029 (41)
  229c:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0029 (41)
  229e:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  22a0:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  22a2:  0e 94 7b 02  call delay                     ; -> 0x04f6
  22a6:  ae 01        movw r21:r20, r29:r28          
  22a8:  49 5f        subi r20, 0xf9                 
  22aa:  5f 4f        sbci r21, 0xff                 
  22ac:  62 e0        ldi r22, 0x02                  
  22ae:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0002 (2)
  22b0:  90 e0        ldi r25, 0x00                  
  22b2:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  22b4:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  22b8:  ae 01        movw r21:r20, r29:r28          
  22ba:  49 5f        subi r20, 0xf9                 
  22bc:  5f 4f        sbci r21, 0xff                 
  22be:  62 e0        ldi r22, 0x02                  
  22c0:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0002 (2)
  22c2:  81 e0        ldi r24, 0x01                  
  22c4:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0001 (1)
  22c6:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  22ca:  69 e2        ldi r22, 0x29                  ; r23:r22 = 0x0029 (41)
  22cc:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0029 (41)
  22ce:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  22d0:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  22d2:  0e 94 7b 02  call delay                     ; -> 0x04f6
  22d6:  ae 01        movw r21:r20, r29:r28          
  22d8:  49 5f        subi r20, 0xf9                 
  22da:  5f 4f        sbci r21, 0xff                 
  22dc:  63 e0        ldi r22, 0x03                  
  22de:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0003 (3)
  22e0:  81 e0        ldi r24, 0x01                  
  22e2:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0001 (1)
  22e4:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  22e8:  ae 01        movw r21:r20, r29:r28          
  22ea:  49 5f        subi r20, 0xf9                 
  22ec:  5f 4f        sbci r21, 0xff                 
  22ee:  63 e0        ldi r22, 0x03                  
  22f0:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0003 (3)
  22f2:  82 e0        ldi r24, 0x02                  
  22f4:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0002 (2)
  22f6:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  22fa:  69 e2        ldi r22, 0x29                  ; r23:r22 = 0x0029 (41)
  22fc:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0029 (41)
  22fe:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  2300:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  2302:  0e 94 7b 02  call delay                     ; -> 0x04f6
  2306:  ae 01        movw r21:r20, r29:r28          
  2308:  49 5f        subi r20, 0xf9                 
  230a:  5f 4f        sbci r21, 0xff                 
  230c:  64 e0        ldi r22, 0x04                  
  230e:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0004 (4)
  2310:  90 e0        ldi r25, 0x00                  
  2312:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  2314:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  2318:  ae 01        movw r21:r20, r29:r28          
  231a:  49 5f        subi r20, 0xf9                 
  231c:  5f 4f        sbci r21, 0xff                 
  231e:  64 e0        ldi r22, 0x04                  
  2320:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0004 (4)
  2322:  81 e0        ldi r24, 0x01                  
  2324:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0001 (1)
  2326:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  232a:  69 e2        ldi r22, 0x29                  ; r23:r22 = 0x0029 (41)
  232c:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0029 (41)
  232e:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  2330:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  2332:  0e 94 7b 02  call delay                     ; -> 0x04f6
  2336:  ae 01        movw r21:r20, r29:r28          
  2338:  49 5f        subi r20, 0xf9                 
  233a:  5f 4f        sbci r21, 0xff                 
  233c:  65 e0        ldi r22, 0x05                  
  233e:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0005 (5)
  2340:  81 e0        ldi r24, 0x01                  
  2342:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0001 (1)
  2344:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  2348:  ae 01        movw r21:r20, r29:r28          
  234a:  49 5f        subi r20, 0xf9                 
  234c:  5f 4f        sbci r21, 0xff                 
  234e:  65 e0        ldi r22, 0x05                  
  2350:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0005 (5)
  2352:  82 e0        ldi r24, 0x02                  
  2354:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0002 (2)
  2356:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  235a:  69 e2        ldi r22, 0x29                  ; r23:r22 = 0x0029 (41)
  235c:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0029 (41)
  235e:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  2360:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  2362:  0e 94 7b 02  call delay                     ; -> 0x04f6
  2366:  ae 01        movw r21:r20, r29:r28          
  2368:  49 5f        subi r20, 0xf9                 
  236a:  5f 4f        sbci r21, 0xff                 
  236c:  66 e0        ldi r22, 0x06                  
  236e:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0006 (6)
  2370:  90 e0        ldi r25, 0x00                  
  2372:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  2374:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  2378:  ae 01        movw r21:r20, r29:r28          
  237a:  49 5f        subi r20, 0xf9                 
  237c:  5f 4f        sbci r21, 0xff                 
  237e:  66 e0        ldi r22, 0x06                  
  2380:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0006 (6)
  2382:  81 e0        ldi r24, 0x01                  
  2384:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0001 (1)
  2386:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  238a:  69 e2        ldi r22, 0x29                  ; r23:r22 = 0x0029 (41)
  238c:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0029 (41)
  238e:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  2390:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  2392:  0e 94 7b 02  call delay                     ; -> 0x04f6
  2396:  ae 01        movw r21:r20, r29:r28          
  2398:  49 5f        subi r20, 0xf9                 
  239a:  5f 4f        sbci r21, 0xff                 
  239c:  67 e0        ldi r22, 0x07                  
  239e:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0007 (7)
  23a0:  81 e0        ldi r24, 0x01                  
  23a2:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0001 (1)
  23a4:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  23a8:  ae 01        movw r21:r20, r29:r28          
  23aa:  49 5f        subi r20, 0xf9                 
  23ac:  5f 4f        sbci r21, 0xff                 
  23ae:  67 e0        ldi r22, 0x07                  
  23b0:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0007 (7)
  23b2:  82 e0        ldi r24, 0x02                  
  23b4:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0002 (2)
  23b6:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  23ba:  69 e2        ldi r22, 0x29                  ; r23:r22 = 0x0029 (41)
  23bc:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0029 (41)
  23be:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  23c0:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  23c2:  0e 94 7b 02  call delay                     ; -> 0x04f6
  23c6:  ae 01        movw r21:r20, r29:r28          
  23c8:  4f 5f        subi r20, 0xff                 
  23ca:  5f 4f        sbci r21, 0xff                 
  23cc:  67 e0        ldi r22, 0x07                  
  23ce:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0007 (7)
  23d0:  83 e0        ldi r24, 0x03                  
  23d2:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0003 (3)
  23d4:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  23d8:  69 e2        ldi r22, 0x29                  ; r23:r22 = 0x0029 (41)
  23da:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0029 (41)
  23dc:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  23de:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  23e0:  0e 94 7b 02  call delay                     ; -> 0x04f6
  23e4:  ae 01        movw r21:r20, r29:r28          
  23e6:  4f 5f        subi r20, 0xff                 
  23e8:  5f 4f        sbci r21, 0xff                 
  23ea:  66 e0        ldi r22, 0x06                  
  23ec:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0006 (6)
  23ee:  83 e0        ldi r24, 0x03                  
  23f0:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0003 (3)
  23f2:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  23f6:  ae 01        movw r21:r20, r29:r28          
  23f8:  4f 5f        subi r20, 0xff                 
  23fa:  5f 4f        sbci r21, 0xff                 
  23fc:  66 e0        ldi r22, 0x06                  
  23fe:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0006 (6)
  2400:  84 e0        ldi r24, 0x04                  
  2402:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0004 (4)
  2404:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  2408:  69 e2        ldi r22, 0x29                  ; r23:r22 = 0x0029 (41)
  240a:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0029 (41)
  240c:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  240e:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  2410:  0e 94 7b 02  call delay                     ; -> 0x04f6
  2414:  ae 01        movw r21:r20, r29:r28          
  2416:  4f 5f        subi r20, 0xff                 
  2418:  5f 4f        sbci r21, 0xff                 
  241a:  65 e0        ldi r22, 0x05                  
  241c:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0005 (5)
  241e:  83 e0        ldi r24, 0x03                  
  2420:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0003 (3)
  2422:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  2426:  69 e2        ldi r22, 0x29                  ; r23:r22 = 0x0029 (41)
  2428:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0029 (41)
  242a:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  242c:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  242e:  0e 94 7b 02  call delay                     ; -> 0x04f6
  2432:  ae 01        movw r21:r20, r29:r28          
  2434:  4f 5f        subi r20, 0xff                 
  2436:  5f 4f        sbci r21, 0xff                 
  2438:  64 e0        ldi r22, 0x04                  
  243a:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0004 (4)
  243c:  82 e0        ldi r24, 0x02                  
  243e:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0002 (2)
  2440:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  2444:  ae 01        movw r21:r20, r29:r28          
  2446:  4f 5f        subi r20, 0xff                 
  2448:  5f 4f        sbci r21, 0xff                 
  244a:  64 e0        ldi r22, 0x04                  
  244c:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0004 (4)
  244e:  83 e0        ldi r24, 0x03                  
  2450:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0003 (3)
  2452:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  2456:  69 e2        ldi r22, 0x29                  ; r23:r22 = 0x0029 (41)
  2458:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0029 (41)
  245a:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  245c:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  245e:  0e 94 7b 02  call delay                     ; -> 0x04f6
  2462:  ae 01        movw r21:r20, r29:r28          
  2464:  4f 5f        subi r20, 0xff                 
  2466:  5f 4f        sbci r21, 0xff                 
  2468:  63 e0        ldi r22, 0x03                  
  246a:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0003 (3)
  246c:  83 e0        ldi r24, 0x03                  
  246e:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0003 (3)
  2470:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  2474:  69 e2        ldi r22, 0x29                  ; r23:r22 = 0x0029 (41)
  2476:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0029 (41)
  2478:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  247a:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  247c:  0e 94 7b 02  call delay                     ; -> 0x04f6
  2480:  ae 01        movw r21:r20, r29:r28          
  2482:  4f 5f        subi r20, 0xff                 
  2484:  5f 4f        sbci r21, 0xff                 
  2486:  62 e0        ldi r22, 0x02                  
  2488:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0002 (2)
  248a:  83 e0        ldi r24, 0x03                  
  248c:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0003 (3)
  248e:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  2492:  ae 01        movw r21:r20, r29:r28          
  2494:  4f 5f        subi r20, 0xff                 
  2496:  5f 4f        sbci r21, 0xff                 
  2498:  62 e0        ldi r22, 0x02                  
  249a:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0002 (2)
  249c:  84 e0        ldi r24, 0x04                  
  249e:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0004 (4)
  24a0:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  24a4:  69 e2        ldi r22, 0x29                  ; r23:r22 = 0x0029 (41)
  24a6:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0029 (41)
  24a8:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  24aa:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  24ac:  0e 94 7b 02  call delay                     ; -> 0x04f6
  24b0:  ae 01        movw r21:r20, r29:r28          
  24b2:  4f 5f        subi r20, 0xff                 
  24b4:  5f 4f        sbci r21, 0xff                 
  24b6:  61 e0        ldi r22, 0x01                  
  24b8:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0001 (1)
  24ba:  83 e0        ldi r24, 0x03                  
  24bc:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0003 (3)
  24be:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  24c2:  69 e2        ldi r22, 0x29                  ; r23:r22 = 0x0029 (41)
  24c4:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0029 (41)
  24c6:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  24c8:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  24ca:  0e 94 7b 02  call delay                     ; -> 0x04f6
  24ce:  ae 01        movw r21:r20, r29:r28          
  24d0:  4f 5f        subi r20, 0xff                 
  24d2:  5f 4f        sbci r21, 0xff                 
  24d4:  70 e0        ldi r23, 0x00                  
  24d6:  60 e0        ldi r22, 0x00                  ; r23:r22 = 0x0000 (0)
  24d8:  82 e0        ldi r24, 0x02                  
  24da:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0002 (2)
  24dc:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  24e0:  ae 01        movw r21:r20, r29:r28          
  24e2:  4f 5f        subi r20, 0xff                 
  24e4:  5f 4f        sbci r21, 0xff                 
  24e6:  70 e0        ldi r23, 0x00                  
  24e8:  60 e0        ldi r22, 0x00                  ; r23:r22 = 0x0000 (0)
  24ea:  83 e0        ldi r24, 0x03                  
  24ec:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0003 (3)
  24ee:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  24f2:  69 e2        ldi r22, 0x29                  ; r23:r22 = 0x0029 (41)
  24f4:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0029 (41)
  24f6:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  24f8:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
L_24fa:
  24fa:  0e 94 7b 02  call delay                     ; -> 0x04f6
  24fe:  64 c9        rjmp L_17c8                    ; -> 0x17c8
L_2500:
  2500:  89 2b        or r24, r25                    
  2502:  09 f0        breq L_2506                    ; -> 0x2506
  2504:  61 c9        rjmp L_17c8                    ; -> 0x17c8
L_2506:
  2506:  86 e0        ldi r24, 0x06                  
  2508:  ee e1        ldi r30, 0x1e                  
  250a:  f1 e0        ldi r31, 0x01                  ; r31:r30 = 0x011e (286)
  250c:  de 01        movw r27:r26, r29:r28          
  250e:  17 96        adiw r27:r26, 7                
L_2510:
  2510:  01 90        ld r0, Z+                      
  2512:  0d 92        st X+, r0                      
  2514:  8a 95        dec r24                        
  2516:  e1 f7        brne L_2510                    ; -> 0x2510
  2518:  86 e0        ldi r24, 0x06                  
  251a:  e4 e2        ldi r30, 0x24                  
  251c:  f1 e0        ldi r31, 0x01                  ; r31:r30 = 0x0124 (292)
  251e:  de 01        movw r27:r26, r29:r28          
  2520:  11 96        adiw r27:r26, 1                
L_2522:
  2522:  01 90        ld r0, Z+                      
  2524:  0d 92        st X+, r0                      
  2526:  8a 95        dec r24                        
  2528:  e1 f7        brne L_2522                    ; -> 0x2522
  252a:  ae 01        movw r21:r20, r29:r28          
  252c:  49 5f        subi r20, 0xf9                 
  252e:  5f 4f        sbci r21, 0xff                 
  2530:  70 e0        ldi r23, 0x00                  
  2532:  60 e0        ldi r22, 0x00                  ; r23:r22 = 0x0000 (0)
  2534:  89 e0        ldi r24, 0x09                  
  2536:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0009 (9)
  2538:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  253c:  60 91 fb 02  lds r22, 0x02fb                ; banco
  2540:  70 91 fc 02  lds r23, 0x02fc                ; v_02fc
  2544:  83 e0        ldi r24, 0x03                  
  2546:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0003 (3)
  2548:  0e 94 b5 07  call USR_tocar                 ; -> 0x0f6a
  254c:  ae 01        movw r21:r20, r29:r28          
  254e:  4f 5f        subi r20, 0xff                 
  2550:  5f 4f        sbci r21, 0xff                 
  2552:  62 e0        ldi r22, 0x02                  
  2554:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0002 (2)
  2556:  90 e0        ldi r25, 0x00                  
  2558:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  255a:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  255e:  ae 01        movw r21:r20, r29:r28          
  2560:  4f 5f        subi r20, 0xff                 
  2562:  5f 4f        sbci r21, 0xff                 
  2564:  63 e0        ldi r22, 0x03                  
  2566:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0003 (3)
  2568:  90 e0        ldi r25, 0x00                  
  256a:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  256c:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  2570:  ae 01        movw r21:r20, r29:r28          
  2572:  4f 5f        subi r20, 0xff                 
  2574:  5f 4f        sbci r21, 0xff                 
  2576:  64 e0        ldi r22, 0x04                  
  2578:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0004 (4)
  257a:  90 e0        ldi r25, 0x00                  
  257c:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  257e:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  2582:  ae 01        movw r21:r20, r29:r28          
  2584:  4f 5f        subi r20, 0xff                 
  2586:  5f 4f        sbci r21, 0xff                 
  2588:  65 e0        ldi r22, 0x05                  
  258a:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0005 (5)
  258c:  90 e0        ldi r25, 0x00                  
  258e:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  2590:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  2594:  ae 01        movw r21:r20, r29:r28          
  2596:  4f 5f        subi r20, 0xff                 
  2598:  5f 4f        sbci r21, 0xff                 
  259a:  66 e0        ldi r22, 0x06                  
  259c:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0006 (6)
  259e:  90 e0        ldi r25, 0x00                  
  25a0:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  25a2:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  25a6:  ae 01        movw r21:r20, r29:r28          
  25a8:  4f 5f        subi r20, 0xff                 
  25aa:  5f 4f        sbci r21, 0xff                 
  25ac:  67 e0        ldi r22, 0x07                  
  25ae:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0007 (7)
  25b0:  90 e0        ldi r25, 0x00                  
  25b2:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  25b4:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  25b8:  ae 01        movw r21:r20, r29:r28          
  25ba:  4f 5f        subi r20, 0xff                 
  25bc:  5f 4f        sbci r21, 0xff                 
  25be:  70 e0        ldi r23, 0x00                  
  25c0:  60 e0        ldi r22, 0x00                  ; r23:r22 = 0x0000 (0)
  25c2:  81 e0        ldi r24, 0x01                  
  25c4:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0001 (1)
  25c6:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  25ca:  ae 01        movw r21:r20, r29:r28          
  25cc:  4f 5f        subi r20, 0xff                 
  25ce:  5f 4f        sbci r21, 0xff                 
  25d0:  61 e0        ldi r22, 0x01                  
  25d2:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0001 (1)
  25d4:  81 e0        ldi r24, 0x01                  
  25d6:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0001 (1)
  25d8:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  25dc:  ae 01        movw r21:r20, r29:r28          
  25de:  4f 5f        subi r20, 0xff                 
  25e0:  5f 4f        sbci r21, 0xff                 
  25e2:  63 e0        ldi r22, 0x03                  
  25e4:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0003 (3)
  25e6:  81 e0        ldi r24, 0x01                  
  25e8:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0001 (1)
  25ea:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  25ee:  ae 01        movw r21:r20, r29:r28          
  25f0:  4f 5f        subi r20, 0xff                 
  25f2:  5f 4f        sbci r21, 0xff                 
  25f4:  66 e0        ldi r22, 0x06                  
  25f6:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0006 (6)
  25f8:  81 e0        ldi r24, 0x01                  
  25fa:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0001 (1)
  25fc:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  2600:  ae 01        movw r21:r20, r29:r28          
  2602:  4f 5f        subi r20, 0xff                 
  2604:  5f 4f        sbci r21, 0xff                 
  2606:  67 e0        ldi r22, 0x07                  
  2608:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0007 (7)
  260a:  81 e0        ldi r24, 0x01                  
  260c:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0001 (1)
  260e:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  2612:  ae 01        movw r21:r20, r29:r28          
  2614:  4f 5f        subi r20, 0xff                 
  2616:  5f 4f        sbci r21, 0xff                 
  2618:  70 e0        ldi r23, 0x00                  
  261a:  60 e0        ldi r22, 0x00                  ; r23:r22 = 0x0000 (0)
  261c:  82 e0        ldi r24, 0x02                  
  261e:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0002 (2)
  2620:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  2624:  ae 01        movw r21:r20, r29:r28          
  2626:  4f 5f        subi r20, 0xff                 
  2628:  5f 4f        sbci r21, 0xff                 
  262a:  61 e0        ldi r22, 0x01                  
  262c:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0001 (1)
  262e:  82 e0        ldi r24, 0x02                  
  2630:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0002 (2)
  2632:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  2636:  ae 01        movw r21:r20, r29:r28          
  2638:  4f 5f        subi r20, 0xff                 
  263a:  5f 4f        sbci r21, 0xff                 
  263c:  62 e0        ldi r22, 0x02                  
  263e:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0002 (2)
  2640:  82 e0        ldi r24, 0x02                  
  2642:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0002 (2)
  2644:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  2648:  ae 01        movw r21:r20, r29:r28          
  264a:  4f 5f        subi r20, 0xff                 
  264c:  5f 4f        sbci r21, 0xff                 
  264e:  64 e0        ldi r22, 0x04                  
  2650:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0004 (4)
  2652:  82 e0        ldi r24, 0x02                  
  2654:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0002 (2)
  2656:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  265a:  ae 01        movw r21:r20, r29:r28          
  265c:  4f 5f        subi r20, 0xff                 
  265e:  5f 4f        sbci r21, 0xff                 
  2660:  65 e0        ldi r22, 0x05                  
  2662:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0005 (5)
  2664:  82 e0        ldi r24, 0x02                  
  2666:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0002 (2)
  2668:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  266c:  ae 01        movw r21:r20, r29:r28          
  266e:  4f 5f        subi r20, 0xff                 
  2670:  5f 4f        sbci r21, 0xff                 
  2672:  67 e0        ldi r22, 0x07                  
  2674:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0007 (7)
  2676:  82 e0        ldi r24, 0x02                  
  2678:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0002 (2)
  267a:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  267e:  ae 01        movw r21:r20, r29:r28          
  2680:  4f 5f        subi r20, 0xff                 
  2682:  5f 4f        sbci r21, 0xff                 
  2684:  70 e0        ldi r23, 0x00                  
  2686:  60 e0        ldi r22, 0x00                  ; r23:r22 = 0x0000 (0)
  2688:  83 e0        ldi r24, 0x03                  
  268a:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0003 (3)
  268c:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  2690:  ae 01        movw r21:r20, r29:r28          
  2692:  4f 5f        subi r20, 0xff                 
  2694:  5f 4f        sbci r21, 0xff                 
  2696:  61 e0        ldi r22, 0x01                  
  2698:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0001 (1)
  269a:  83 e0        ldi r24, 0x03                  
  269c:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0003 (3)
  269e:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  26a2:  ae 01        movw r21:r20, r29:r28          
  26a4:  4f 5f        subi r20, 0xff                 
  26a6:  5f 4f        sbci r21, 0xff                 
  26a8:  63 e0        ldi r22, 0x03                  
  26aa:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0003 (3)
  26ac:  83 e0        ldi r24, 0x03                  
  26ae:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0003 (3)
  26b0:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  26b4:  ae 01        movw r21:r20, r29:r28          
  26b6:  4f 5f        subi r20, 0xff                 
  26b8:  5f 4f        sbci r21, 0xff                 
  26ba:  65 e0        ldi r22, 0x05                  
  26bc:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0005 (5)
  26be:  83 e0        ldi r24, 0x03                  
  26c0:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0003 (3)
  26c2:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  26c6:  ae 01        movw r21:r20, r29:r28          
  26c8:  4f 5f        subi r20, 0xff                 
  26ca:  5f 4f        sbci r21, 0xff                 
  26cc:  66 e0        ldi r22, 0x06                  
  26ce:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0006 (6)
  26d0:  83 e0        ldi r24, 0x03                  
  26d2:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0003 (3)
  26d4:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  26d8:  ae 01        movw r21:r20, r29:r28          
  26da:  4f 5f        subi r20, 0xff                 
  26dc:  5f 4f        sbci r21, 0xff                 
  26de:  62 e0        ldi r22, 0x02                  
  26e0:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0002 (2)
  26e2:  84 e0        ldi r24, 0x04                  
  26e4:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0004 (4)
  26e6:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  26ea:  ae 01        movw r21:r20, r29:r28          
  26ec:  4f 5f        subi r20, 0xff                 
  26ee:  5f 4f        sbci r21, 0xff                 
  26f0:  63 e0        ldi r22, 0x03                  
  26f2:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0003 (3)
  26f4:  84 e0        ldi r24, 0x04                  
  26f6:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0004 (4)
  26f8:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  26fc:  ae 01        movw r21:r20, r29:r28          
  26fe:  4f 5f        subi r20, 0xff                 
  2700:  5f 4f        sbci r21, 0xff                 
  2702:  64 e0        ldi r22, 0x04                  
  2704:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0004 (4)
  2706:  84 e0        ldi r24, 0x04                  
  2708:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0004 (4)
  270a:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  270e:  ae 01        movw r21:r20, r29:r28          
  2710:  4f 5f        subi r20, 0xff                 
  2712:  5f 4f        sbci r21, 0xff                 
  2714:  66 e0        ldi r22, 0x06                  
  2716:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0006 (6)
  2718:  84 e0        ldi r24, 0x04                  
  271a:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0004 (4)
  271c:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  2720:  ae 01        movw r21:r20, r29:r28          
  2722:  4f 5f        subi r20, 0xff                 
  2724:  5f 4f        sbci r21, 0xff                 
  2726:  67 e0        ldi r22, 0x07                  
  2728:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0007 (7)
  272a:  84 e0        ldi r24, 0x04                  
  272c:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0004 (4)
  272e:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  2732:  ae 01        movw r21:r20, r29:r28          
  2734:  49 5f        subi r20, 0xf9                 
  2736:  5f 4f        sbci r21, 0xff                 
  2738:  70 e0        ldi r23, 0x00                  
  273a:  60 e0        ldi r22, 0x00                  ; r23:r22 = 0x0000 (0)
  273c:  90 e0        ldi r25, 0x00                  
  273e:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  2740:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  2744:  ae 01        movw r21:r20, r29:r28          
  2746:  49 5f        subi r20, 0xf9                 
  2748:  5f 4f        sbci r21, 0xff                 
  274a:  61 e0        ldi r22, 0x01                  
  274c:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0001 (1)
  274e:  90 e0        ldi r25, 0x00                  
  2750:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  2752:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  2756:  ae 01        movw r21:r20, r29:r28          
  2758:  49 5f        subi r20, 0xf9                 
  275a:  5f 4f        sbci r21, 0xff                 
  275c:  62 e0        ldi r22, 0x02                  
  275e:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0002 (2)
  2760:  81 e0        ldi r24, 0x01                  
  2762:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0001 (1)
  2764:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  2768:  ae 01        movw r21:r20, r29:r28          
  276a:  49 5f        subi r20, 0xf9                 
  276c:  5f 4f        sbci r21, 0xff                 
  276e:  64 e0        ldi r22, 0x04                  
  2770:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0004 (4)
  2772:  81 e0        ldi r24, 0x01                  
  2774:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0001 (1)
  2776:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  277a:  ae 01        movw r21:r20, r29:r28          
  277c:  49 5f        subi r20, 0xf9                 
  277e:  5f 4f        sbci r21, 0xff                 
  2780:  65 e0        ldi r22, 0x05                  
  2782:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0005 (5)
  2784:  81 e0        ldi r24, 0x01                  
  2786:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0001 (1)
  2788:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  278c:  ae 01        movw r21:r20, r29:r28          
  278e:  49 5f        subi r20, 0xf9                 
  2790:  5f 4f        sbci r21, 0xff                 
  2792:  63 e0        ldi r22, 0x03                  
  2794:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0003 (3)
  2796:  82 e0        ldi r24, 0x02                  
  2798:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0002 (2)
  279a:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  279e:  ae 01        movw r21:r20, r29:r28          
  27a0:  49 5f        subi r20, 0xf9                 
  27a2:  5f 4f        sbci r21, 0xff                 
  27a4:  66 e0        ldi r22, 0x06                  
  27a6:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0006 (6)
  27a8:  82 e0        ldi r24, 0x02                  
  27aa:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0002 (2)
  27ac:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  27b0:  ae 01        movw r21:r20, r29:r28          
  27b2:  49 5f        subi r20, 0xf9                 
  27b4:  5f 4f        sbci r21, 0xff                 
  27b6:  62 e0        ldi r22, 0x02                  
  27b8:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0002 (2)
  27ba:  83 e0        ldi r24, 0x03                  
  27bc:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0003 (3)
  27be:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  27c2:  ae 01        movw r21:r20, r29:r28          
  27c4:  49 5f        subi r20, 0xf9                 
  27c6:  5f 4f        sbci r21, 0xff                 
  27c8:  64 e0        ldi r22, 0x04                  
  27ca:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0004 (4)
  27cc:  83 e0        ldi r24, 0x03                  
  27ce:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0003 (3)
  27d0:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  27d4:  ae 01        movw r21:r20, r29:r28          
  27d6:  49 5f        subi r20, 0xf9                 
  27d8:  5f 4f        sbci r21, 0xff                 
  27da:  67 e0        ldi r22, 0x07                  
  27dc:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0007 (7)
  27de:  83 e0        ldi r24, 0x03                  
  27e0:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0003 (3)
  27e2:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  27e6:  ae 01        movw r21:r20, r29:r28          
  27e8:  49 5f        subi r20, 0xf9                 
  27ea:  5f 4f        sbci r21, 0xff                 
  27ec:  70 e0        ldi r23, 0x00                  
  27ee:  60 e0        ldi r22, 0x00                  ; r23:r22 = 0x0000 (0)
  27f0:  84 e0        ldi r24, 0x04                  
  27f2:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0004 (4)
  27f4:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  27f8:  ae 01        movw r21:r20, r29:r28          
  27fa:  49 5f        subi r20, 0xf9                 
  27fc:  5f 4f        sbci r21, 0xff                 
  27fe:  61 e0        ldi r22, 0x01                  
  2800:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0001 (1)
  2802:  84 e0        ldi r24, 0x04                  
  2804:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0004 (4)
  2806:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  280a:  ae 01        movw r21:r20, r29:r28          
  280c:  49 5f        subi r20, 0xf9                 
  280e:  5f 4f        sbci r21, 0xff                 
  2810:  65 e0        ldi r22, 0x05                  
  2812:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0005 (5)
  2814:  84 e0        ldi r24, 0x04                  
  2816:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0004 (4)
  2818:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  281c:  62 e3        ldi r22, 0x32                  ; r23:r22 = 0x0032 (50)
  281e:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0032 (50)
  2820:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  2822:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  2824:  0e 94 7b 02  call delay                     ; -> 0x04f6
  2828:  ae 01        movw r21:r20, r29:r28          
  282a:  49 5f        subi r20, 0xf9                 
  282c:  5f 4f        sbci r21, 0xff                 
  282e:  66 e0        ldi r22, 0x06                  
  2830:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0006 (6)
  2832:  90 e0        ldi r25, 0x00                  
  2834:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  2836:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  283a:  ae 01        movw r21:r20, r29:r28          
  283c:  49 5f        subi r20, 0xf9                 
  283e:  5f 4f        sbci r21, 0xff                 
  2840:  67 e0        ldi r22, 0x07                  
  2842:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0007 (7)
  2844:  90 e0        ldi r25, 0x00                  
  2846:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  2848:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  284c:  ae 01        movw r21:r20, r29:r28          
  284e:  4f 5f        subi r20, 0xff                 
  2850:  5f 4f        sbci r21, 0xff                 
  2852:  66 e0        ldi r22, 0x06                  
  2854:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0006 (6)
  2856:  82 e0        ldi r24, 0x02                  
  2858:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0002 (2)
  285a:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  285e:  ae 01        movw r21:r20, r29:r28          
  2860:  4f 5f        subi r20, 0xff                 
  2862:  5f 4f        sbci r21, 0xff                 
  2864:  67 e0        ldi r22, 0x07                  
  2866:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0007 (7)
  2868:  83 e0        ldi r24, 0x03                  
  286a:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0003 (3)
  286c:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  2870:  64 e6        ldi r22, 0x64                  ; r23:r22 = 0x0064 (100)
  2872:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0064 (100)
  2874:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  2876:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  2878:  0e 94 7b 02  call delay                     ; -> 0x04f6
  287c:  ae 01        movw r21:r20, r29:r28          
  287e:  4f 5f        subi r20, 0xff                 
  2880:  5f 4f        sbci r21, 0xff                 
  2882:  66 e0        ldi r22, 0x06                  
  2884:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0006 (6)
  2886:  90 e0        ldi r25, 0x00                  
  2888:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  288a:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  288e:  ae 01        movw r21:r20, r29:r28          
  2890:  4f 5f        subi r20, 0xff                 
  2892:  5f 4f        sbci r21, 0xff                 
  2894:  67 e0        ldi r22, 0x07                  
  2896:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0007 (7)
  2898:  90 e0        ldi r25, 0x00                  
  289a:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  289c:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  28a0:  ae 01        movw r21:r20, r29:r28          
  28a2:  49 5f        subi r20, 0xf9                 
  28a4:  5f 4f        sbci r21, 0xff                 
  28a6:  66 e0        ldi r22, 0x06                  
  28a8:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0006 (6)
  28aa:  82 e0        ldi r24, 0x02                  
  28ac:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0002 (2)
  28ae:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  28b2:  ae 01        movw r21:r20, r29:r28          
  28b4:  49 5f        subi r20, 0xf9                 
  28b6:  5f 4f        sbci r21, 0xff                 
  28b8:  67 e0        ldi r22, 0x07                  
  28ba:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0007 (7)
  28bc:  83 e0        ldi r24, 0x03                  
  28be:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0003 (3)
  28c0:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  28c4:  64 e6        ldi r22, 0x64                  ; r23:r22 = 0x0064 (100)
  28c6:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0064 (100)
  28c8:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  28ca:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  28cc:  0e 94 7b 02  call delay                     ; -> 0x04f6
  28d0:  ae 01        movw r21:r20, r29:r28          
  28d2:  49 5f        subi r20, 0xf9                 
  28d4:  5f 4f        sbci r21, 0xff                 
  28d6:  66 e0        ldi r22, 0x06                  
  28d8:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0006 (6)
  28da:  90 e0        ldi r25, 0x00                  
  28dc:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  28de:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  28e2:  ae 01        movw r21:r20, r29:r28          
  28e4:  49 5f        subi r20, 0xf9                 
  28e6:  5f 4f        sbci r21, 0xff                 
  28e8:  67 e0        ldi r22, 0x07                  
  28ea:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0007 (7)
  28ec:  90 e0        ldi r25, 0x00                  
  28ee:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  28f0:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  28f4:  ae 01        movw r21:r20, r29:r28          
  28f6:  4f 5f        subi r20, 0xff                 
  28f8:  5f 4f        sbci r21, 0xff                 
  28fa:  66 e0        ldi r22, 0x06                  
  28fc:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0006 (6)
  28fe:  82 e0        ldi r24, 0x02                  
  2900:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0002 (2)
  2902:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  2906:  ae 01        movw r21:r20, r29:r28          
  2908:  4f 5f        subi r20, 0xff                 
  290a:  5f 4f        sbci r21, 0xff                 
  290c:  67 e0        ldi r22, 0x07                  
  290e:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0007 (7)
  2910:  83 e0        ldi r24, 0x03                  
  2912:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0003 (3)
  2914:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  2918:  64 e6        ldi r22, 0x64                  ; r23:r22 = 0x0064 (100)
  291a:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0064 (100)
  291c:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  291e:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  2920:  0e 94 7b 02  call delay                     ; -> 0x04f6
  2924:  ae 01        movw r21:r20, r29:r28          
  2926:  4f 5f        subi r20, 0xff                 
  2928:  5f 4f        sbci r21, 0xff                 
  292a:  66 e0        ldi r22, 0x06                  
  292c:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0006 (6)
  292e:  90 e0        ldi r25, 0x00                  
  2930:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  2932:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  2936:  ae 01        movw r21:r20, r29:r28          
  2938:  4f 5f        subi r20, 0xff                 
  293a:  5f 4f        sbci r21, 0xff                 
  293c:  67 e0        ldi r22, 0x07                  
  293e:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0007 (7)
  2940:  90 e0        ldi r25, 0x00                  
  2942:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  2944:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  2948:  ae 01        movw r21:r20, r29:r28          
  294a:  49 5f        subi r20, 0xf9                 
  294c:  5f 4f        sbci r21, 0xff                 
  294e:  66 e0        ldi r22, 0x06                  
  2950:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0006 (6)
  2952:  82 e0        ldi r24, 0x02                  
  2954:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0002 (2)
  2956:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  295a:  ae 01        movw r21:r20, r29:r28          
  295c:  49 5f        subi r20, 0xf9                 
  295e:  5f 4f        sbci r21, 0xff                 
  2960:  67 e0        ldi r22, 0x07                  
  2962:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0007 (7)
  2964:  83 e0        ldi r24, 0x03                  
  2966:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0003 (3)
  2968:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  296c:  64 e6        ldi r22, 0x64                  ; r23:r22 = 0x0064 (100)
  296e:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0064 (100)
  2970:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  2972:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  2974:  0e 94 7b 02  call delay                     ; -> 0x04f6
  2978:  ae 01        movw r21:r20, r29:r28          
  297a:  49 5f        subi r20, 0xf9                 
  297c:  5f 4f        sbci r21, 0xff                 
  297e:  66 e0        ldi r22, 0x06                  
  2980:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0006 (6)
  2982:  90 e0        ldi r25, 0x00                  
  2984:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  2986:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  298a:  ae 01        movw r21:r20, r29:r28          
  298c:  49 5f        subi r20, 0xf9                 
  298e:  5f 4f        sbci r21, 0xff                 
  2990:  67 e0        ldi r22, 0x07                  
  2992:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0007 (7)
  2994:  90 e0        ldi r25, 0x00                  
  2996:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  2998:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  299c:  ae 01        movw r21:r20, r29:r28          
  299e:  4f 5f        subi r20, 0xff                 
  29a0:  5f 4f        sbci r21, 0xff                 
  29a2:  66 e0        ldi r22, 0x06                  
  29a4:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0006 (6)
  29a6:  82 e0        ldi r24, 0x02                  
  29a8:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0002 (2)
  29aa:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  29ae:  ae 01        movw r21:r20, r29:r28          
  29b0:  4f 5f        subi r20, 0xff                 
  29b2:  5f 4f        sbci r21, 0xff                 
  29b4:  67 e0        ldi r22, 0x07                  
  29b6:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0007 (7)
  29b8:  83 e0        ldi r24, 0x03                  
  29ba:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0003 (3)
  29bc:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  29c0:  64 e6        ldi r22, 0x64                  ; r23:r22 = 0x0064 (100)
  29c2:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0064 (100)
  29c4:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  29c6:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  29c8:  0e 94 7b 02  call delay                     ; -> 0x04f6
  29cc:  ae 01        movw r21:r20, r29:r28          
  29ce:  4f 5f        subi r20, 0xff                 
  29d0:  5f 4f        sbci r21, 0xff                 
  29d2:  66 e0        ldi r22, 0x06                  
  29d4:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0006 (6)
  29d6:  90 e0        ldi r25, 0x00                  
  29d8:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  29da:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  29de:  ae 01        movw r21:r20, r29:r28          
  29e0:  4f 5f        subi r20, 0xff                 
  29e2:  5f 4f        sbci r21, 0xff                 
  29e4:  67 e0        ldi r22, 0x07                  
  29e6:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0007 (7)
  29e8:  90 e0        ldi r25, 0x00                  
  29ea:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  29ec:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  29f0:  ae 01        movw r21:r20, r29:r28          
  29f2:  49 5f        subi r20, 0xf9                 
  29f4:  5f 4f        sbci r21, 0xff                 
  29f6:  66 e0        ldi r22, 0x06                  
  29f8:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0006 (6)
  29fa:  82 e0        ldi r24, 0x02                  
  29fc:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0002 (2)
  29fe:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  2a02:  ae 01        movw r21:r20, r29:r28          
  2a04:  49 5f        subi r20, 0xf9                 
  2a06:  5f 4f        sbci r21, 0xff                 
  2a08:  67 e0        ldi r22, 0x07                  
  2a0a:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0007 (7)
  2a0c:  83 e0        ldi r24, 0x03                  
  2a0e:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0003 (3)
  2a10:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  2a14:  64 e6        ldi r22, 0x64                  ; r23:r22 = 0x0064 (100)
  2a16:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0064 (100)
  2a18:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  2a1a:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  2a1c:  0e 94 7b 02  call delay                     ; -> 0x04f6
  2a20:  ae 01        movw r21:r20, r29:r28          
  2a22:  49 5f        subi r20, 0xf9                 
  2a24:  5f 4f        sbci r21, 0xff                 
  2a26:  66 e0        ldi r22, 0x06                  
  2a28:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0006 (6)
  2a2a:  90 e0        ldi r25, 0x00                  
  2a2c:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  2a2e:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  2a32:  ae 01        movw r21:r20, r29:r28          
  2a34:  49 5f        subi r20, 0xf9                 
  2a36:  5f 4f        sbci r21, 0xff                 
  2a38:  67 e0        ldi r22, 0x07                  
  2a3a:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0007 (7)
  2a3c:  90 e0        ldi r25, 0x00                  
  2a3e:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  2a40:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  2a44:  ae 01        movw r21:r20, r29:r28          
  2a46:  4f 5f        subi r20, 0xff                 
  2a48:  5f 4f        sbci r21, 0xff                 
  2a4a:  66 e0        ldi r22, 0x06                  
  2a4c:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0006 (6)
  2a4e:  82 e0        ldi r24, 0x02                  
  2a50:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0002 (2)
  2a52:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  2a56:  ae 01        movw r21:r20, r29:r28          
  2a58:  4f 5f        subi r20, 0xff                 
  2a5a:  5f 4f        sbci r21, 0xff                 
  2a5c:  67 e0        ldi r22, 0x07                  
  2a5e:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0007 (7)
  2a60:  83 e0        ldi r24, 0x03                  
  2a62:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0003 (3)
  2a64:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  2a68:  64 e6        ldi r22, 0x64                  ; r23:r22 = 0x0064 (100)
  2a6a:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0064 (100)
  2a6c:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  2a6e:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  2a70:  0e 94 7b 02  call delay                     ; -> 0x04f6
  2a74:  ae 01        movw r21:r20, r29:r28          
  2a76:  4f 5f        subi r20, 0xff                 
  2a78:  5f 4f        sbci r21, 0xff                 
  2a7a:  66 e0        ldi r22, 0x06                  
  2a7c:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0006 (6)
  2a7e:  90 e0        ldi r25, 0x00                  
  2a80:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  2a82:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  2a86:  ae 01        movw r21:r20, r29:r28          
  2a88:  4f 5f        subi r20, 0xff                 
  2a8a:  5f 4f        sbci r21, 0xff                 
  2a8c:  67 e0        ldi r22, 0x07                  
  2a8e:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0007 (7)
  2a90:  90 e0        ldi r25, 0x00                  
  2a92:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  2a94:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  2a98:  ae 01        movw r21:r20, r29:r28          
  2a9a:  49 5f        subi r20, 0xf9                 
  2a9c:  5f 4f        sbci r21, 0xff                 
  2a9e:  66 e0        ldi r22, 0x06                  
  2aa0:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0006 (6)
  2aa2:  82 e0        ldi r24, 0x02                  
  2aa4:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0002 (2)
  2aa6:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  2aaa:  ae 01        movw r21:r20, r29:r28          
  2aac:  49 5f        subi r20, 0xf9                 
  2aae:  5f 4f        sbci r21, 0xff                 
  2ab0:  67 e0        ldi r22, 0x07                  
  2ab2:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0007 (7)
  2ab4:  83 e0        ldi r24, 0x03                  
  2ab6:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0003 (3)
  2ab8:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  2abc:  62 e3        ldi r22, 0x32                  ; r23:r22 = 0x0032 (50)
  2abe:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0032 (50)
  2ac0:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  2ac2:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  2ac4:  0e 94 7b 02  call delay                     ; -> 0x04f6
  2ac8:  ae 01        movw r21:r20, r29:r28          
  2aca:  49 5f        subi r20, 0xf9                 
  2acc:  5f 4f        sbci r21, 0xff                 
  2ace:  66 e0        ldi r22, 0x06                  
  2ad0:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0006 (6)
  2ad2:  90 e0        ldi r25, 0x00                  
  2ad4:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  2ad6:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  2ada:  ae 01        movw r21:r20, r29:r28          
  2adc:  49 5f        subi r20, 0xf9                 
  2ade:  5f 4f        sbci r21, 0xff                 
  2ae0:  67 e0        ldi r22, 0x07                  
  2ae2:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0007 (7)
  2ae4:  90 e0        ldi r25, 0x00                  
  2ae6:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  2ae8:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  2aec:  ae 01        movw r21:r20, r29:r28          
  2aee:  4f 5f        subi r20, 0xff                 
  2af0:  5f 4f        sbci r21, 0xff                 
  2af2:  66 e0        ldi r22, 0x06                  
  2af4:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0006 (6)
  2af6:  82 e0        ldi r24, 0x02                  
  2af8:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0002 (2)
  2afa:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  2afe:  ae 01        movw r21:r20, r29:r28          
  2b00:  4f 5f        subi r20, 0xff                 
  2b02:  5f 4f        sbci r21, 0xff                 
  2b04:  67 e0        ldi r22, 0x07                  
  2b06:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0007 (7)
  2b08:  83 e0        ldi r24, 0x03                  
  2b0a:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0003 (3)
  2b0c:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  2b10:  64 e6        ldi r22, 0x64                  ; r23:r22 = 0x0064 (100)
  2b12:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0064 (100)
  2b14:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  2b16:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  2b18:  0e 94 7b 02  call delay                     ; -> 0x04f6
  2b1c:  ae 01        movw r21:r20, r29:r28          
  2b1e:  4f 5f        subi r20, 0xff                 
  2b20:  5f 4f        sbci r21, 0xff                 
  2b22:  66 e0        ldi r22, 0x06                  
  2b24:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0006 (6)
  2b26:  90 e0        ldi r25, 0x00                  
  2b28:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  2b2a:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  2b2e:  ae 01        movw r21:r20, r29:r28          
  2b30:  4f 5f        subi r20, 0xff                 
  2b32:  5f 4f        sbci r21, 0xff                 
  2b34:  67 e0        ldi r22, 0x07                  
  2b36:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0007 (7)
  2b38:  90 e0        ldi r25, 0x00                  
  2b3a:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  2b3c:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  2b40:  ae 01        movw r21:r20, r29:r28          
  2b42:  49 5f        subi r20, 0xf9                 
  2b44:  5f 4f        sbci r21, 0xff                 
  2b46:  66 e0        ldi r22, 0x06                  
  2b48:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0006 (6)
  2b4a:  82 e0        ldi r24, 0x02                  
  2b4c:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0002 (2)
  2b4e:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  2b52:  ae 01        movw r21:r20, r29:r28          
  2b54:  49 5f        subi r20, 0xf9                 
  2b56:  5f 4f        sbci r21, 0xff                 
  2b58:  67 e0        ldi r22, 0x07                  
  2b5a:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0007 (7)
  2b5c:  83 e0        ldi r24, 0x03                  
  2b5e:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0003 (3)
  2b60:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  2b64:  64 e6        ldi r22, 0x64                  ; r23:r22 = 0x0064 (100)
  2b66:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0064 (100)
  2b68:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  2b6a:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  2b6c:  0e 94 7b 02  call delay                     ; -> 0x04f6
  2b70:  ae 01        movw r21:r20, r29:r28          
  2b72:  49 5f        subi r20, 0xf9                 
  2b74:  5f 4f        sbci r21, 0xff                 
  2b76:  66 e0        ldi r22, 0x06                  
  2b78:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0006 (6)
  2b7a:  90 e0        ldi r25, 0x00                  
  2b7c:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  2b7e:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  2b82:  ae 01        movw r21:r20, r29:r28          
  2b84:  49 5f        subi r20, 0xf9                 
  2b86:  5f 4f        sbci r21, 0xff                 
  2b88:  67 e0        ldi r22, 0x07                  
  2b8a:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0007 (7)
  2b8c:  90 e0        ldi r25, 0x00                  
  2b8e:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  2b90:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  2b94:  ae 01        movw r21:r20, r29:r28          
  2b96:  4f 5f        subi r20, 0xff                 
  2b98:  5f 4f        sbci r21, 0xff                 
  2b9a:  66 e0        ldi r22, 0x06                  
  2b9c:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0006 (6)
  2b9e:  82 e0        ldi r24, 0x02                  
  2ba0:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0002 (2)
  2ba2:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  2ba6:  ae 01        movw r21:r20, r29:r28          
  2ba8:  4f 5f        subi r20, 0xff                 
  2baa:  5f 4f        sbci r21, 0xff                 
  2bac:  67 e0        ldi r22, 0x07                  
  2bae:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0007 (7)
  2bb0:  83 e0        ldi r24, 0x03                  
  2bb2:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0003 (3)
  2bb4:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  2bb8:  64 e6        ldi r22, 0x64                  ; r23:r22 = 0x0064 (100)
  2bba:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0064 (100)
  2bbc:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  2bbe:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  2bc0:  0e 94 7b 02  call delay                     ; -> 0x04f6
  2bc4:  ae 01        movw r21:r20, r29:r28          
  2bc6:  4f 5f        subi r20, 0xff                 
  2bc8:  5f 4f        sbci r21, 0xff                 
  2bca:  66 e0        ldi r22, 0x06                  
  2bcc:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0006 (6)
  2bce:  90 e0        ldi r25, 0x00                  
  2bd0:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  2bd2:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  2bd6:  ae 01        movw r21:r20, r29:r28          
  2bd8:  4f 5f        subi r20, 0xff                 
  2bda:  5f 4f        sbci r21, 0xff                 
  2bdc:  67 e0        ldi r22, 0x07                  
  2bde:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0007 (7)
  2be0:  90 e0        ldi r25, 0x00                  
  2be2:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  2be4:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  2be8:  ae 01        movw r21:r20, r29:r28          
  2bea:  49 5f        subi r20, 0xf9                 
  2bec:  5f 4f        sbci r21, 0xff                 
  2bee:  66 e0        ldi r22, 0x06                  
  2bf0:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0006 (6)
  2bf2:  82 e0        ldi r24, 0x02                  
  2bf4:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0002 (2)
  2bf6:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  2bfa:  ae 01        movw r21:r20, r29:r28          
  2bfc:  49 5f        subi r20, 0xf9                 
  2bfe:  5f 4f        sbci r21, 0xff                 
  2c00:  67 e0        ldi r22, 0x07                  
  2c02:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0007 (7)
  2c04:  83 e0        ldi r24, 0x03                  
  2c06:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0003 (3)
  2c08:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  2c0c:  64 e6        ldi r22, 0x64                  ; r23:r22 = 0x0064 (100)
  2c0e:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0064 (100)
  2c10:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  2c12:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  2c14:  0e 94 7b 02  call delay                     ; -> 0x04f6
  2c18:  ae 01        movw r21:r20, r29:r28          
  2c1a:  49 5f        subi r20, 0xf9                 
  2c1c:  5f 4f        sbci r21, 0xff                 
  2c1e:  66 e0        ldi r22, 0x06                  
  2c20:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0006 (6)
  2c22:  90 e0        ldi r25, 0x00                  
  2c24:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  2c26:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  2c2a:  ae 01        movw r21:r20, r29:r28          
  2c2c:  49 5f        subi r20, 0xf9                 
  2c2e:  5f 4f        sbci r21, 0xff                 
  2c30:  67 e0        ldi r22, 0x07                  
  2c32:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0007 (7)
  2c34:  90 e0        ldi r25, 0x00                  
  2c36:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  2c38:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  2c3c:  ae 01        movw r21:r20, r29:r28          
  2c3e:  4f 5f        subi r20, 0xff                 
  2c40:  5f 4f        sbci r21, 0xff                 
  2c42:  66 e0        ldi r22, 0x06                  
  2c44:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0006 (6)
  2c46:  82 e0        ldi r24, 0x02                  
  2c48:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0002 (2)
  2c4a:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  2c4e:  ae 01        movw r21:r20, r29:r28          
  2c50:  4f 5f        subi r20, 0xff                 
  2c52:  5f 4f        sbci r21, 0xff                 
  2c54:  67 e0        ldi r22, 0x07                  
  2c56:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0007 (7)
  2c58:  83 e0        ldi r24, 0x03                  
  2c5a:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0003 (3)
  2c5c:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  2c60:  64 e6        ldi r22, 0x64                  ; r23:r22 = 0x0064 (100)
  2c62:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0064 (100)
  2c64:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  2c66:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  2c68:  0e 94 7b 02  call delay                     ; -> 0x04f6
  2c6c:  ae 01        movw r21:r20, r29:r28          
  2c6e:  4f 5f        subi r20, 0xff                 
  2c70:  5f 4f        sbci r21, 0xff                 
  2c72:  66 e0        ldi r22, 0x06                  
  2c74:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0006 (6)
  2c76:  90 e0        ldi r25, 0x00                  
  2c78:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  2c7a:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  2c7e:  ae 01        movw r21:r20, r29:r28          
  2c80:  4f 5f        subi r20, 0xff                 
  2c82:  5f 4f        sbci r21, 0xff                 
  2c84:  67 e0        ldi r22, 0x07                  
  2c86:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0007 (7)
  2c88:  90 e0        ldi r25, 0x00                  
  2c8a:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  2c8c:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  2c90:  ae 01        movw r21:r20, r29:r28          
  2c92:  49 5f        subi r20, 0xf9                 
  2c94:  5f 4f        sbci r21, 0xff                 
  2c96:  66 e0        ldi r22, 0x06                  
  2c98:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0006 (6)
  2c9a:  82 e0        ldi r24, 0x02                  
  2c9c:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0002 (2)
  2c9e:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  2ca2:  ae 01        movw r21:r20, r29:r28          
  2ca4:  49 5f        subi r20, 0xf9                 
  2ca6:  5f 4f        sbci r21, 0xff                 
  2ca8:  67 e0        ldi r22, 0x07                  
  2caa:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0007 (7)
  2cac:  83 e0        ldi r24, 0x03                  
  2cae:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0003 (3)
  2cb0:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  2cb4:  64 e6        ldi r22, 0x64                  ; r23:r22 = 0x0064 (100)
  2cb6:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0064 (100)
  2cb8:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  2cba:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  2cbc:  0e 94 7b 02  call delay                     ; -> 0x04f6
  2cc0:  ae 01        movw r21:r20, r29:r28          
  2cc2:  49 5f        subi r20, 0xf9                 
  2cc4:  5f 4f        sbci r21, 0xff                 
  2cc6:  66 e0        ldi r22, 0x06                  
  2cc8:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0006 (6)
  2cca:  90 e0        ldi r25, 0x00                  
  2ccc:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  2cce:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  2cd2:  ae 01        movw r21:r20, r29:r28          
  2cd4:  49 5f        subi r20, 0xf9                 
  2cd6:  5f 4f        sbci r21, 0xff                 
  2cd8:  67 e0        ldi r22, 0x07                  
  2cda:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0007 (7)
  2cdc:  90 e0        ldi r25, 0x00                  
  2cde:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  2ce0:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  2ce4:  ae 01        movw r21:r20, r29:r28          
  2ce6:  4f 5f        subi r20, 0xff                 
  2ce8:  5f 4f        sbci r21, 0xff                 
  2cea:  66 e0        ldi r22, 0x06                  
  2cec:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0006 (6)
  2cee:  82 e0        ldi r24, 0x02                  
  2cf0:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0002 (2)
  2cf2:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  2cf6:  ae 01        movw r21:r20, r29:r28          
  2cf8:  4f 5f        subi r20, 0xff                 
  2cfa:  5f 4f        sbci r21, 0xff                 
  2cfc:  67 e0        ldi r22, 0x07                  
  2cfe:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0007 (7)
  2d00:  83 e0        ldi r24, 0x03                  
  2d02:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0003 (3)
  2d04:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  2d08:  64 e6        ldi r22, 0x64                  ; r23:r22 = 0x0064 (100)
  2d0a:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0064 (100)
  2d0c:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  2d0e:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  2d10:  0e 94 7b 02  call delay                     ; -> 0x04f6
  2d14:  ae 01        movw r21:r20, r29:r28          
  2d16:  4f 5f        subi r20, 0xff                 
  2d18:  5f 4f        sbci r21, 0xff                 
  2d1a:  66 e0        ldi r22, 0x06                  
  2d1c:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0006 (6)
  2d1e:  90 e0        ldi r25, 0x00                  
  2d20:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  2d22:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  2d26:  ae 01        movw r21:r20, r29:r28          
  2d28:  4f 5f        subi r20, 0xff                 
  2d2a:  5f 4f        sbci r21, 0xff                 
  2d2c:  67 e0        ldi r22, 0x07                  
  2d2e:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0007 (7)
  2d30:  90 e0        ldi r25, 0x00                  
  2d32:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  2d34:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  2d38:  ae 01        movw r21:r20, r29:r28          
  2d3a:  49 5f        subi r20, 0xf9                 
  2d3c:  5f 4f        sbci r21, 0xff                 
  2d3e:  66 e0        ldi r22, 0x06                  
  2d40:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0006 (6)
  2d42:  82 e0        ldi r24, 0x02                  
  2d44:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0002 (2)
  2d46:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  2d4a:  ae 01        movw r21:r20, r29:r28          
  2d4c:  49 5f        subi r20, 0xf9                 
  2d4e:  5f 4f        sbci r21, 0xff                 
  2d50:  67 e0        ldi r22, 0x07                  
  2d52:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0007 (7)
  2d54:  83 e0        ldi r24, 0x03                  
  2d56:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0003 (3)
  2d58:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  2d5c:  62 e3        ldi r22, 0x32                  ; r23:r22 = 0x0032 (50)
  2d5e:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0032 (50)
  2d60:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  2d62:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  2d64:  0e 94 7b 02  call delay                     ; -> 0x04f6
  2d68:  ae 01        movw r21:r20, r29:r28          
  2d6a:  49 5f        subi r20, 0xf9                 
  2d6c:  5f 4f        sbci r21, 0xff                 
  2d6e:  66 e0        ldi r22, 0x06                  
  2d70:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0006 (6)
  2d72:  90 e0        ldi r25, 0x00                  
  2d74:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  2d76:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  2d7a:  ae 01        movw r21:r20, r29:r28          
  2d7c:  49 5f        subi r20, 0xf9                 
  2d7e:  5f 4f        sbci r21, 0xff                 
  2d80:  67 e0        ldi r22, 0x07                  
  2d82:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0007 (7)
  2d84:  90 e0        ldi r25, 0x00                  
  2d86:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  2d88:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  2d8c:  ae 01        movw r21:r20, r29:r28          
  2d8e:  4f 5f        subi r20, 0xff                 
  2d90:  5f 4f        sbci r21, 0xff                 
  2d92:  66 e0        ldi r22, 0x06                  
  2d94:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0006 (6)
  2d96:  82 e0        ldi r24, 0x02                  
  2d98:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0002 (2)
  2d9a:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  2d9e:  ae 01        movw r21:r20, r29:r28          
  2da0:  4f 5f        subi r20, 0xff                 
  2da2:  5f 4f        sbci r21, 0xff                 
  2da4:  67 e0        ldi r22, 0x07                  
  2da6:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0007 (7)
  2da8:  83 e0        ldi r24, 0x03                  
  2daa:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0003 (3)
  2dac:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  2db0:  64 e6        ldi r22, 0x64                  ; r23:r22 = 0x0064 (100)
  2db2:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0064 (100)
  2db4:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  2db6:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  2db8:  0e 94 7b 02  call delay                     ; -> 0x04f6
  2dbc:  ae 01        movw r21:r20, r29:r28          
  2dbe:  4f 5f        subi r20, 0xff                 
  2dc0:  5f 4f        sbci r21, 0xff                 
  2dc2:  66 e0        ldi r22, 0x06                  
  2dc4:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0006 (6)
  2dc6:  90 e0        ldi r25, 0x00                  
  2dc8:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  2dca:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  2dce:  ae 01        movw r21:r20, r29:r28          
  2dd0:  4f 5f        subi r20, 0xff                 
  2dd2:  5f 4f        sbci r21, 0xff                 
  2dd4:  67 e0        ldi r22, 0x07                  
  2dd6:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0007 (7)
  2dd8:  90 e0        ldi r25, 0x00                  
  2dda:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  2ddc:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  2de0:  ae 01        movw r21:r20, r29:r28          
  2de2:  49 5f        subi r20, 0xf9                 
  2de4:  5f 4f        sbci r21, 0xff                 
  2de6:  66 e0        ldi r22, 0x06                  
  2de8:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0006 (6)
  2dea:  82 e0        ldi r24, 0x02                  
  2dec:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0002 (2)
  2dee:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  2df2:  ae 01        movw r21:r20, r29:r28          
  2df4:  49 5f        subi r20, 0xf9                 
  2df6:  5f 4f        sbci r21, 0xff                 
  2df8:  67 e0        ldi r22, 0x07                  
  2dfa:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0007 (7)
  2dfc:  83 e0        ldi r24, 0x03                  
  2dfe:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0003 (3)
  2e00:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  2e04:  64 e6        ldi r22, 0x64                  ; r23:r22 = 0x0064 (100)
  2e06:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0064 (100)
  2e08:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  2e0a:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  2e0c:  0e 94 7b 02  call delay                     ; -> 0x04f6
  2e10:  ae 01        movw r21:r20, r29:r28          
  2e12:  49 5f        subi r20, 0xf9                 
  2e14:  5f 4f        sbci r21, 0xff                 
  2e16:  66 e0        ldi r22, 0x06                  
  2e18:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0006 (6)
  2e1a:  90 e0        ldi r25, 0x00                  
  2e1c:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  2e1e:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  2e22:  ae 01        movw r21:r20, r29:r28          
  2e24:  49 5f        subi r20, 0xf9                 
  2e26:  5f 4f        sbci r21, 0xff                 
  2e28:  67 e0        ldi r22, 0x07                  
  2e2a:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0007 (7)
  2e2c:  90 e0        ldi r25, 0x00                  
  2e2e:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  2e30:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  2e34:  ae 01        movw r21:r20, r29:r28          
  2e36:  4f 5f        subi r20, 0xff                 
  2e38:  5f 4f        sbci r21, 0xff                 
  2e3a:  66 e0        ldi r22, 0x06                  
  2e3c:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0006 (6)
  2e3e:  82 e0        ldi r24, 0x02                  
  2e40:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0002 (2)
  2e42:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  2e46:  ae 01        movw r21:r20, r29:r28          
  2e48:  4f 5f        subi r20, 0xff                 
  2e4a:  5f 4f        sbci r21, 0xff                 
  2e4c:  67 e0        ldi r22, 0x07                  
  2e4e:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0007 (7)
  2e50:  83 e0        ldi r24, 0x03                  
  2e52:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0003 (3)
  2e54:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  2e58:  64 e6        ldi r22, 0x64                  ; r23:r22 = 0x0064 (100)
  2e5a:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0064 (100)
  2e5c:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  2e5e:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  2e60:  0e 94 7b 02  call delay                     ; -> 0x04f6
  2e64:  ae 01        movw r21:r20, r29:r28          
  2e66:  4f 5f        subi r20, 0xff                 
  2e68:  5f 4f        sbci r21, 0xff                 
  2e6a:  66 e0        ldi r22, 0x06                  
  2e6c:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0006 (6)
  2e6e:  90 e0        ldi r25, 0x00                  
  2e70:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  2e72:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  2e76:  ae 01        movw r21:r20, r29:r28          
  2e78:  4f 5f        subi r20, 0xff                 
  2e7a:  5f 4f        sbci r21, 0xff                 
  2e7c:  67 e0        ldi r22, 0x07                  
  2e7e:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0007 (7)
  2e80:  90 e0        ldi r25, 0x00                  
  2e82:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  2e84:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  2e88:  ae 01        movw r21:r20, r29:r28          
  2e8a:  49 5f        subi r20, 0xf9                 
  2e8c:  5f 4f        sbci r21, 0xff                 
  2e8e:  66 e0        ldi r22, 0x06                  
  2e90:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0006 (6)
  2e92:  82 e0        ldi r24, 0x02                  
  2e94:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0002 (2)
  2e96:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  2e9a:  ae 01        movw r21:r20, r29:r28          
  2e9c:  49 5f        subi r20, 0xf9                 
  2e9e:  5f 4f        sbci r21, 0xff                 
  2ea0:  67 e0        ldi r22, 0x07                  
  2ea2:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0007 (7)
  2ea4:  83 e0        ldi r24, 0x03                  
  2ea6:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0003 (3)
  2ea8:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  2eac:  64 e6        ldi r22, 0x64                  ; r23:r22 = 0x0064 (100)
  2eae:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0064 (100)
  2eb0:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  2eb2:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  2eb4:  0e 94 7b 02  call delay                     ; -> 0x04f6
  2eb8:  ae 01        movw r21:r20, r29:r28          
  2eba:  49 5f        subi r20, 0xf9                 
  2ebc:  5f 4f        sbci r21, 0xff                 
  2ebe:  66 e0        ldi r22, 0x06                  
  2ec0:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0006 (6)
  2ec2:  90 e0        ldi r25, 0x00                  
  2ec4:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  2ec6:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  2eca:  ae 01        movw r21:r20, r29:r28          
  2ecc:  49 5f        subi r20, 0xf9                 
  2ece:  5f 4f        sbci r21, 0xff                 
  2ed0:  67 e0        ldi r22, 0x07                  
  2ed2:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0007 (7)
  2ed4:  90 e0        ldi r25, 0x00                  
  2ed6:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  2ed8:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  2edc:  ae 01        movw r21:r20, r29:r28          
  2ede:  4f 5f        subi r20, 0xff                 
  2ee0:  5f 4f        sbci r21, 0xff                 
  2ee2:  66 e0        ldi r22, 0x06                  
  2ee4:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0006 (6)
  2ee6:  82 e0        ldi r24, 0x02                  
  2ee8:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0002 (2)
  2eea:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  2eee:  ae 01        movw r21:r20, r29:r28          
  2ef0:  4f 5f        subi r20, 0xff                 
  2ef2:  5f 4f        sbci r21, 0xff                 
  2ef4:  67 e0        ldi r22, 0x07                  
  2ef6:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0007 (7)
  2ef8:  83 e0        ldi r24, 0x03                  
  2efa:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0003 (3)
  2efc:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  2f00:  64 e6        ldi r22, 0x64                  ; r23:r22 = 0x0064 (100)
  2f02:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0064 (100)
  2f04:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  2f06:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  2f08:  0e 94 7b 02  call delay                     ; -> 0x04f6
  2f0c:  ae 01        movw r21:r20, r29:r28          
  2f0e:  4f 5f        subi r20, 0xff                 
  2f10:  5f 4f        sbci r21, 0xff                 
  2f12:  66 e0        ldi r22, 0x06                  
  2f14:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0006 (6)
  2f16:  90 e0        ldi r25, 0x00                  
  2f18:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  2f1a:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  2f1e:  ae 01        movw r21:r20, r29:r28          
  2f20:  4f 5f        subi r20, 0xff                 
  2f22:  5f 4f        sbci r21, 0xff                 
  2f24:  67 e0        ldi r22, 0x07                  
  2f26:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0007 (7)
  2f28:  90 e0        ldi r25, 0x00                  
  2f2a:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  2f2c:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  2f30:  ae 01        movw r21:r20, r29:r28          
  2f32:  49 5f        subi r20, 0xf9                 
  2f34:  5f 4f        sbci r21, 0xff                 
  2f36:  66 e0        ldi r22, 0x06                  
  2f38:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0006 (6)
  2f3a:  82 e0        ldi r24, 0x02                  
  2f3c:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0002 (2)
  2f3e:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  2f42:  ae 01        movw r21:r20, r29:r28          
  2f44:  49 5f        subi r20, 0xf9                 
  2f46:  5f 4f        sbci r21, 0xff                 
  2f48:  67 e0        ldi r22, 0x07                  
  2f4a:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0007 (7)
  2f4c:  83 e0        ldi r24, 0x03                  
  2f4e:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0003 (3)
  2f50:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  2f54:  64 e6        ldi r22, 0x64                  ; r23:r22 = 0x0064 (100)
  2f56:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0064 (100)
  2f58:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  2f5a:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  2f5c:  0e 94 7b 02  call delay                     ; -> 0x04f6
  2f60:  ae 01        movw r21:r20, r29:r28          
  2f62:  49 5f        subi r20, 0xf9                 
  2f64:  5f 4f        sbci r21, 0xff                 
  2f66:  66 e0        ldi r22, 0x06                  
  2f68:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0006 (6)
  2f6a:  90 e0        ldi r25, 0x00                  
  2f6c:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  2f6e:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  2f72:  ae 01        movw r21:r20, r29:r28          
  2f74:  49 5f        subi r20, 0xf9                 
  2f76:  5f 4f        sbci r21, 0xff                 
  2f78:  67 e0        ldi r22, 0x07                  
  2f7a:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0007 (7)
  2f7c:  90 e0        ldi r25, 0x00                  
  2f7e:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  2f80:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  2f84:  ae 01        movw r21:r20, r29:r28          
  2f86:  4f 5f        subi r20, 0xff                 
  2f88:  5f 4f        sbci r21, 0xff                 
  2f8a:  66 e0        ldi r22, 0x06                  
  2f8c:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0006 (6)
  2f8e:  82 e0        ldi r24, 0x02                  
  2f90:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0002 (2)
  2f92:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  2f96:  ae 01        movw r21:r20, r29:r28          
  2f98:  4f 5f        subi r20, 0xff                 
  2f9a:  5f 4f        sbci r21, 0xff                 
  2f9c:  67 e0        ldi r22, 0x07                  
  2f9e:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0007 (7)
  2fa0:  83 e0        ldi r24, 0x03                  
  2fa2:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0003 (3)
  2fa4:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  2fa8:  64 e6        ldi r22, 0x64                  ; r23:r22 = 0x0064 (100)
  2faa:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0064 (100)
  2fac:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  2fae:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  2fb0:  0e 94 7b 02  call delay                     ; -> 0x04f6
  2fb4:  ae 01        movw r21:r20, r29:r28          
  2fb6:  4f 5f        subi r20, 0xff                 
  2fb8:  5f 4f        sbci r21, 0xff                 
  2fba:  66 e0        ldi r22, 0x06                  
  2fbc:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0006 (6)
  2fbe:  90 e0        ldi r25, 0x00                  
  2fc0:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  2fc2:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  2fc6:  ae 01        movw r21:r20, r29:r28          
  2fc8:  4f 5f        subi r20, 0xff                 
  2fca:  5f 4f        sbci r21, 0xff                 
  2fcc:  67 e0        ldi r22, 0x07                  
  2fce:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0007 (7)
  2fd0:  90 e0        ldi r25, 0x00                  
  2fd2:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  2fd4:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  2fd8:  ae 01        movw r21:r20, r29:r28          
  2fda:  49 5f        subi r20, 0xf9                 
  2fdc:  5f 4f        sbci r21, 0xff                 
  2fde:  66 e0        ldi r22, 0x06                  
  2fe0:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0006 (6)
  2fe2:  82 e0        ldi r24, 0x02                  
  2fe4:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0002 (2)
  2fe6:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  2fea:  ae 01        movw r21:r20, r29:r28          
  2fec:  49 5f        subi r20, 0xf9                 
  2fee:  5f 4f        sbci r21, 0xff                 
  2ff0:  67 e0        ldi r22, 0x07                  
  2ff2:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0007 (7)
  2ff4:  83 e0        ldi r24, 0x03                  
  2ff6:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0003 (3)
  2ff8:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  2ffc:  62 e3        ldi r22, 0x32                  ; r23:r22 = 0x0032 (50)
  2ffe:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0032 (50)
  3000:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  3002:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  3004:  0e 94 7b 02  call delay                     ; -> 0x04f6
  3008:  ae 01        movw r21:r20, r29:r28          
  300a:  49 5f        subi r20, 0xf9                 
  300c:  5f 4f        sbci r21, 0xff                 
  300e:  66 e0        ldi r22, 0x06                  
  3010:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0006 (6)
  3012:  90 e0        ldi r25, 0x00                  
  3014:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  3016:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  301a:  ae 01        movw r21:r20, r29:r28          
  301c:  49 5f        subi r20, 0xf9                 
  301e:  5f 4f        sbci r21, 0xff                 
  3020:  67 e0        ldi r22, 0x07                  
  3022:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0007 (7)
  3024:  90 e0        ldi r25, 0x00                  
  3026:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  3028:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  302c:  ae 01        movw r21:r20, r29:r28          
  302e:  4f 5f        subi r20, 0xff                 
  3030:  5f 4f        sbci r21, 0xff                 
  3032:  66 e0        ldi r22, 0x06                  
  3034:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0006 (6)
  3036:  82 e0        ldi r24, 0x02                  
  3038:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0002 (2)
  303a:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  303e:  ae 01        movw r21:r20, r29:r28          
  3040:  4f 5f        subi r20, 0xff                 
  3042:  5f 4f        sbci r21, 0xff                 
  3044:  67 e0        ldi r22, 0x07                  
  3046:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0007 (7)
  3048:  83 e0        ldi r24, 0x03                  
  304a:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0003 (3)
  304c:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  3050:  64 e6        ldi r22, 0x64                  ; r23:r22 = 0x0064 (100)
  3052:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0064 (100)
  3054:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  3056:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  3058:  0e 94 7b 02  call delay                     ; -> 0x04f6
  305c:  ae 01        movw r21:r20, r29:r28          
  305e:  4f 5f        subi r20, 0xff                 
  3060:  5f 4f        sbci r21, 0xff                 
  3062:  66 e0        ldi r22, 0x06                  
  3064:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0006 (6)
  3066:  90 e0        ldi r25, 0x00                  
  3068:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  306a:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  306e:  ae 01        movw r21:r20, r29:r28          
  3070:  4f 5f        subi r20, 0xff                 
  3072:  5f 4f        sbci r21, 0xff                 
  3074:  67 e0        ldi r22, 0x07                  
  3076:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0007 (7)
  3078:  90 e0        ldi r25, 0x00                  
  307a:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  307c:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  3080:  ae 01        movw r21:r20, r29:r28          
  3082:  49 5f        subi r20, 0xf9                 
  3084:  5f 4f        sbci r21, 0xff                 
  3086:  66 e0        ldi r22, 0x06                  
  3088:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0006 (6)
  308a:  82 e0        ldi r24, 0x02                  
  308c:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0002 (2)
  308e:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  3092:  ae 01        movw r21:r20, r29:r28          
  3094:  49 5f        subi r20, 0xf9                 
  3096:  5f 4f        sbci r21, 0xff                 
  3098:  67 e0        ldi r22, 0x07                  
  309a:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0007 (7)
  309c:  83 e0        ldi r24, 0x03                  
  309e:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0003 (3)
  30a0:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  30a4:  64 e6        ldi r22, 0x64                  ; r23:r22 = 0x0064 (100)
  30a6:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0064 (100)
  30a8:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  30aa:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  30ac:  0e 94 7b 02  call delay                     ; -> 0x04f6
  30b0:  ae 01        movw r21:r20, r29:r28          
  30b2:  49 5f        subi r20, 0xf9                 
  30b4:  5f 4f        sbci r21, 0xff                 
  30b6:  66 e0        ldi r22, 0x06                  
  30b8:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0006 (6)
  30ba:  90 e0        ldi r25, 0x00                  
  30bc:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  30be:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  30c2:  ae 01        movw r21:r20, r29:r28          
  30c4:  49 5f        subi r20, 0xf9                 
  30c6:  5f 4f        sbci r21, 0xff                 
  30c8:  67 e0        ldi r22, 0x07                  
  30ca:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0007 (7)
  30cc:  90 e0        ldi r25, 0x00                  
  30ce:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  30d0:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  30d4:  ae 01        movw r21:r20, r29:r28          
  30d6:  4f 5f        subi r20, 0xff                 
  30d8:  5f 4f        sbci r21, 0xff                 
  30da:  66 e0        ldi r22, 0x06                  
  30dc:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0006 (6)
  30de:  82 e0        ldi r24, 0x02                  
  30e0:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0002 (2)
  30e2:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  30e6:  ae 01        movw r21:r20, r29:r28          
  30e8:  4f 5f        subi r20, 0xff                 
  30ea:  5f 4f        sbci r21, 0xff                 
  30ec:  67 e0        ldi r22, 0x07                  
  30ee:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0007 (7)
  30f0:  83 e0        ldi r24, 0x03                  
  30f2:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0003 (3)
  30f4:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  30f8:  64 e6        ldi r22, 0x64                  ; r23:r22 = 0x0064 (100)
  30fa:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0064 (100)
  30fc:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  30fe:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  3100:  0e 94 7b 02  call delay                     ; -> 0x04f6
  3104:  ae 01        movw r21:r20, r29:r28          
  3106:  4f 5f        subi r20, 0xff                 
  3108:  5f 4f        sbci r21, 0xff                 
  310a:  66 e0        ldi r22, 0x06                  
  310c:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0006 (6)
  310e:  90 e0        ldi r25, 0x00                  
  3110:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  3112:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  3116:  ae 01        movw r21:r20, r29:r28          
  3118:  4f 5f        subi r20, 0xff                 
  311a:  5f 4f        sbci r21, 0xff                 
  311c:  67 e0        ldi r22, 0x07                  
  311e:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0007 (7)
  3120:  90 e0        ldi r25, 0x00                  
  3122:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  3124:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  3128:  ae 01        movw r21:r20, r29:r28          
  312a:  49 5f        subi r20, 0xf9                 
  312c:  5f 4f        sbci r21, 0xff                 
  312e:  66 e0        ldi r22, 0x06                  
  3130:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0006 (6)
  3132:  82 e0        ldi r24, 0x02                  
  3134:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0002 (2)
  3136:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  313a:  ae 01        movw r21:r20, r29:r28          
  313c:  49 5f        subi r20, 0xf9                 
  313e:  5f 4f        sbci r21, 0xff                 
  3140:  67 e0        ldi r22, 0x07                  
  3142:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0007 (7)
  3144:  83 e0        ldi r24, 0x03                  
  3146:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0003 (3)
  3148:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  314c:  64 e6        ldi r22, 0x64                  ; r23:r22 = 0x0064 (100)
  314e:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0064 (100)
  3150:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  3152:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  3154:  0e 94 7b 02  call delay                     ; -> 0x04f6
  3158:  ae 01        movw r21:r20, r29:r28          
  315a:  49 5f        subi r20, 0xf9                 
  315c:  5f 4f        sbci r21, 0xff                 
  315e:  66 e0        ldi r22, 0x06                  
  3160:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0006 (6)
  3162:  90 e0        ldi r25, 0x00                  
  3164:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  3166:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  316a:  ae 01        movw r21:r20, r29:r28          
  316c:  49 5f        subi r20, 0xf9                 
  316e:  5f 4f        sbci r21, 0xff                 
  3170:  67 e0        ldi r22, 0x07                  
  3172:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0007 (7)
  3174:  90 e0        ldi r25, 0x00                  
  3176:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  3178:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  317c:  ae 01        movw r21:r20, r29:r28          
  317e:  4f 5f        subi r20, 0xff                 
  3180:  5f 4f        sbci r21, 0xff                 
  3182:  66 e0        ldi r22, 0x06                  
  3184:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0006 (6)
  3186:  82 e0        ldi r24, 0x02                  
  3188:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0002 (2)
  318a:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  318e:  ae 01        movw r21:r20, r29:r28          
  3190:  4f 5f        subi r20, 0xff                 
  3192:  5f 4f        sbci r21, 0xff                 
  3194:  67 e0        ldi r22, 0x07                  
  3196:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0007 (7)
  3198:  83 e0        ldi r24, 0x03                  
  319a:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0003 (3)
  319c:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  31a0:  64 e6        ldi r22, 0x64                  ; r23:r22 = 0x0064 (100)
  31a2:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0064 (100)
  31a4:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  31a6:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  31a8:  0e 94 7b 02  call delay                     ; -> 0x04f6
  31ac:  ae 01        movw r21:r20, r29:r28          
  31ae:  4f 5f        subi r20, 0xff                 
  31b0:  5f 4f        sbci r21, 0xff                 
  31b2:  66 e0        ldi r22, 0x06                  
  31b4:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0006 (6)
  31b6:  90 e0        ldi r25, 0x00                  
  31b8:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  31ba:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  31be:  ae 01        movw r21:r20, r29:r28          
  31c0:  4f 5f        subi r20, 0xff                 
  31c2:  5f 4f        sbci r21, 0xff                 
  31c4:  67 e0        ldi r22, 0x07                  
  31c6:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0007 (7)
  31c8:  90 e0        ldi r25, 0x00                  
  31ca:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  31cc:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  31d0:  ae 01        movw r21:r20, r29:r28          
  31d2:  49 5f        subi r20, 0xf9                 
  31d4:  5f 4f        sbci r21, 0xff                 
  31d6:  66 e0        ldi r22, 0x06                  
  31d8:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0006 (6)
  31da:  82 e0        ldi r24, 0x02                  
  31dc:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0002 (2)
  31de:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  31e2:  ae 01        movw r21:r20, r29:r28          
  31e4:  49 5f        subi r20, 0xf9                 
  31e6:  5f 4f        sbci r21, 0xff                 
  31e8:  67 e0        ldi r22, 0x07                  
  31ea:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0007 (7)
  31ec:  83 e0        ldi r24, 0x03                  
  31ee:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0003 (3)
  31f0:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  31f4:  64 e6        ldi r22, 0x64                  ; r23:r22 = 0x0064 (100)
  31f6:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0064 (100)
  31f8:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  31fa:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  31fc:  0e 94 7b 02  call delay                     ; -> 0x04f6
  3200:  ae 01        movw r21:r20, r29:r28          
  3202:  49 5f        subi r20, 0xf9                 
  3204:  5f 4f        sbci r21, 0xff                 
  3206:  66 e0        ldi r22, 0x06                  
  3208:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0006 (6)
  320a:  90 e0        ldi r25, 0x00                  
  320c:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  320e:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  3212:  ae 01        movw r21:r20, r29:r28          
  3214:  49 5f        subi r20, 0xf9                 
  3216:  5f 4f        sbci r21, 0xff                 
  3218:  67 e0        ldi r22, 0x07                  
  321a:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0007 (7)
  321c:  90 e0        ldi r25, 0x00                  
  321e:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  3220:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  3224:  ae 01        movw r21:r20, r29:r28          
  3226:  4f 5f        subi r20, 0xff                 
  3228:  5f 4f        sbci r21, 0xff                 
  322a:  66 e0        ldi r22, 0x06                  
  322c:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0006 (6)
  322e:  82 e0        ldi r24, 0x02                  
  3230:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0002 (2)
  3232:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  3236:  ae 01        movw r21:r20, r29:r28          
  3238:  4f 5f        subi r20, 0xff                 
  323a:  5f 4f        sbci r21, 0xff                 
  323c:  67 e0        ldi r22, 0x07                  
  323e:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0007 (7)
  3240:  83 e0        ldi r24, 0x03                  
  3242:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0003 (3)
  3244:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  3248:  64 e6        ldi r22, 0x64                  ; r23:r22 = 0x0064 (100)
  324a:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0064 (100)
  324c:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  324e:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  3250:  0e 94 7b 02  call delay                     ; -> 0x04f6
  3254:  ae 01        movw r21:r20, r29:r28          
  3256:  4f 5f        subi r20, 0xff                 
  3258:  5f 4f        sbci r21, 0xff                 
  325a:  66 e0        ldi r22, 0x06                  
  325c:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0006 (6)
  325e:  90 e0        ldi r25, 0x00                  
  3260:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  3262:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  3266:  ae 01        movw r21:r20, r29:r28          
  3268:  4f 5f        subi r20, 0xff                 
  326a:  5f 4f        sbci r21, 0xff                 
  326c:  67 e0        ldi r22, 0x07                  
  326e:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0007 (7)
  3270:  90 e0        ldi r25, 0x00                  
  3272:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  3274:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  3278:  ae 01        movw r21:r20, r29:r28          
  327a:  49 5f        subi r20, 0xf9                 
  327c:  5f 4f        sbci r21, 0xff                 
  327e:  66 e0        ldi r22, 0x06                  
  3280:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0006 (6)
  3282:  82 e0        ldi r24, 0x02                  
  3284:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0002 (2)
  3286:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  328a:  ae 01        movw r21:r20, r29:r28          
  328c:  49 5f        subi r20, 0xf9                 
  328e:  5f 4f        sbci r21, 0xff                 
  3290:  67 e0        ldi r22, 0x07                  
  3292:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0007 (7)
  3294:  83 e0        ldi r24, 0x03                  
  3296:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0003 (3)
L_3298:
  3298:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  329c:  0c 94 e4 0b  jmp L_17c8                     ; -> 0x17c8
L_32a0:
  32a0:  ea 94        dec r14                        
  32a2:  ef 28        or r14, r15                    
  32a4:  11 f0        breq L_32aa                    ; -> 0x32aa
  32a6:  0c 94 e4 0b  jmp L_17c8                     ; -> 0x17c8
L_32aa:
  32aa:  01 15        cp r16, r1                     
  32ac:  11 05        cpc r17, r1                    
  32ae:  09 f0        breq L_32b2                    ; -> 0x32b2
  32b0:  c0 c3        rjmp L_3a32                    ; -> 0x3a32
L_32b2:
  32b2:  89 2b        or r24, r25                    
  32b4:  11 f0        breq L_32ba                    ; -> 0x32ba
  32b6:  0c 94 e4 0b  jmp L_17c8                     ; -> 0x17c8
L_32ba:
  32ba:  86 e0        ldi r24, 0x06                  
  32bc:  ea e2        ldi r30, 0x2a                  
  32be:  f1 e0        ldi r31, 0x01                  ; r31:r30 = 0x012a (298)
  32c0:  de 01        movw r27:r26, r29:r28          
  32c2:  1d 96        adiw r27:r26, 13               
L_32c4:
  32c4:  01 90        ld r0, Z+                      
  32c6:  0d 92        st X+, r0                      
  32c8:  8a 95        dec r24                        
  32ca:  e1 f7        brne L_32c4                    ; -> 0x32c4
  32cc:  86 e0        ldi r24, 0x06                  
  32ce:  e0 e3        ldi r30, 0x30                  
  32d0:  f1 e0        ldi r31, 0x01                  ; r31:r30 = 0x0130 (304)
  32d2:  de 01        movw r27:r26, r29:r28          
  32d4:  17 96        adiw r27:r26, 7                
L_32d6:
  32d6:  01 90        ld r0, Z+                      
  32d8:  0d 92        st X+, r0                      
  32da:  8a 95        dec r24                        
  32dc:  e1 f7        brne L_32d6                    ; -> 0x32d6
  32de:  86 e0        ldi r24, 0x06                  
  32e0:  e6 e3        ldi r30, 0x36                  
  32e2:  f1 e0        ldi r31, 0x01                  ; r31:r30 = 0x0136 (310)
  32e4:  de 01        movw r27:r26, r29:r28          
  32e6:  11 96        adiw r27:r26, 1                
L_32e8:
  32e8:  01 90        ld r0, Z+                      
  32ea:  0d 92        st X+, r0                      
  32ec:  8a 95        dec r24                        
  32ee:  e1 f7        brne L_32e8                    ; -> 0x32e8
  32f0:  ae 01        movw r21:r20, r29:r28          
  32f2:  4f 5f        subi r20, 0xff                 
  32f4:  5f 4f        sbci r21, 0xff                 
  32f6:  70 e0        ldi r23, 0x00                  
  32f8:  60 e0        ldi r22, 0x00                  ; r23:r22 = 0x0000 (0)
  32fa:  89 e0        ldi r24, 0x09                  
  32fc:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0009 (9)
  32fe:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  3302:  60 91 fb 02  lds r22, 0x02fb                ; banco
  3306:  70 91 fc 02  lds r23, 0x02fc                ; v_02fc
  330a:  82 e0        ldi r24, 0x02                  
  330c:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0002 (2)
  330e:  0e 94 b5 07  call USR_tocar                 ; -> 0x0f6a
  3312:  ae 01        movw r21:r20, r29:r28          
  3314:  49 5f        subi r20, 0xf9                 
  3316:  5f 4f        sbci r21, 0xff                 
  3318:  70 e0        ldi r23, 0x00                  
  331a:  60 e0        ldi r22, 0x00                  ; r23:r22 = 0x0000 (0)
  331c:  90 e0        ldi r25, 0x00                  
  331e:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  3320:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  3324:  ae 01        movw r21:r20, r29:r28          
  3326:  49 5f        subi r20, 0xf9                 
  3328:  5f 4f        sbci r21, 0xff                 
  332a:  61 e0        ldi r22, 0x01                  
  332c:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0001 (1)
  332e:  90 e0        ldi r25, 0x00                  
  3330:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  3332:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  3336:  ae 01        movw r21:r20, r29:r28          
  3338:  49 5f        subi r20, 0xf9                 
  333a:  5f 4f        sbci r21, 0xff                 
  333c:  62 e0        ldi r22, 0x02                  
  333e:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0002 (2)
  3340:  90 e0        ldi r25, 0x00                  
  3342:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  3344:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  3348:  ae 01        movw r21:r20, r29:r28          
  334a:  49 5f        subi r20, 0xf9                 
  334c:  5f 4f        sbci r21, 0xff                 
  334e:  65 e0        ldi r22, 0x05                  
  3350:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0005 (5)
  3352:  90 e0        ldi r25, 0x00                  
  3354:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  3356:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  335a:  ae 01        movw r21:r20, r29:r28          
  335c:  49 5f        subi r20, 0xf9                 
  335e:  5f 4f        sbci r21, 0xff                 
  3360:  66 e0        ldi r22, 0x06                  
  3362:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0006 (6)
  3364:  90 e0        ldi r25, 0x00                  
  3366:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  3368:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  336c:  ae 01        movw r21:r20, r29:r28          
  336e:  49 5f        subi r20, 0xf9                 
  3370:  5f 4f        sbci r21, 0xff                 
  3372:  67 e0        ldi r22, 0x07                  
  3374:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0007 (7)
  3376:  90 e0        ldi r25, 0x00                  
  3378:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  337a:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  337e:  ae 01        movw r21:r20, r29:r28          
  3380:  49 5f        subi r20, 0xf9                 
  3382:  5f 4f        sbci r21, 0xff                 
  3384:  70 e0        ldi r23, 0x00                  
  3386:  60 e0        ldi r22, 0x00                  ; r23:r22 = 0x0000 (0)
  3388:  81 e0        ldi r24, 0x01                  
  338a:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0001 (1)
  338c:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  3390:  ae 01        movw r21:r20, r29:r28          
  3392:  49 5f        subi r20, 0xf9                 
  3394:  5f 4f        sbci r21, 0xff                 
  3396:  61 e0        ldi r22, 0x01                  
  3398:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0001 (1)
  339a:  81 e0        ldi r24, 0x01                  
  339c:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0001 (1)
  339e:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  33a2:  ae 01        movw r21:r20, r29:r28          
  33a4:  49 5f        subi r20, 0xf9                 
  33a6:  5f 4f        sbci r21, 0xff                 
  33a8:  66 e0        ldi r22, 0x06                  
  33aa:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0006 (6)
  33ac:  81 e0        ldi r24, 0x01                  
  33ae:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0001 (1)
  33b0:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  33b4:  ae 01        movw r21:r20, r29:r28          
  33b6:  49 5f        subi r20, 0xf9                 
  33b8:  5f 4f        sbci r21, 0xff                 
  33ba:  67 e0        ldi r22, 0x07                  
  33bc:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0007 (7)
  33be:  81 e0        ldi r24, 0x01                  
  33c0:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0001 (1)
  33c2:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  33c6:  ae 01        movw r21:r20, r29:r28          
  33c8:  49 5f        subi r20, 0xf9                 
  33ca:  5f 4f        sbci r21, 0xff                 
  33cc:  70 e0        ldi r23, 0x00                  
  33ce:  60 e0        ldi r22, 0x00                  ; r23:r22 = 0x0000 (0)
  33d0:  83 e0        ldi r24, 0x03                  
  33d2:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0003 (3)
  33d4:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  33d8:  ae 01        movw r21:r20, r29:r28          
  33da:  49 5f        subi r20, 0xf9                 
  33dc:  5f 4f        sbci r21, 0xff                 
  33de:  61 e0        ldi r22, 0x01                  
  33e0:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0001 (1)
  33e2:  83 e0        ldi r24, 0x03                  
  33e4:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0003 (3)
  33e6:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  33ea:  ae 01        movw r21:r20, r29:r28          
  33ec:  49 5f        subi r20, 0xf9                 
  33ee:  5f 4f        sbci r21, 0xff                 
  33f0:  66 e0        ldi r22, 0x06                  
  33f2:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0006 (6)
  33f4:  83 e0        ldi r24, 0x03                  
  33f6:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0003 (3)
  33f8:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  33fc:  ae 01        movw r21:r20, r29:r28          
  33fe:  49 5f        subi r20, 0xf9                 
  3400:  5f 4f        sbci r21, 0xff                 
  3402:  67 e0        ldi r22, 0x07                  
  3404:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0007 (7)
  3406:  83 e0        ldi r24, 0x03                  
  3408:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0003 (3)
  340a:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  340e:  ae 01        movw r21:r20, r29:r28          
  3410:  49 5f        subi r20, 0xf9                 
  3412:  5f 4f        sbci r21, 0xff                 
  3414:  70 e0        ldi r23, 0x00                  
  3416:  60 e0        ldi r22, 0x00                  ; r23:r22 = 0x0000 (0)
  3418:  84 e0        ldi r24, 0x04                  
  341a:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0004 (4)
  341c:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  3420:  ae 01        movw r21:r20, r29:r28          
  3422:  49 5f        subi r20, 0xf9                 
  3424:  5f 4f        sbci r21, 0xff                 
  3426:  61 e0        ldi r22, 0x01                  
  3428:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0001 (1)
  342a:  84 e0        ldi r24, 0x04                  
  342c:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0004 (4)
  342e:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  3432:  ae 01        movw r21:r20, r29:r28          
  3434:  49 5f        subi r20, 0xf9                 
  3436:  5f 4f        sbci r21, 0xff                 
  3438:  62 e0        ldi r22, 0x02                  
  343a:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0002 (2)
  343c:  84 e0        ldi r24, 0x04                  
  343e:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0004 (4)
  3440:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  3444:  ae 01        movw r21:r20, r29:r28          
  3446:  49 5f        subi r20, 0xf9                 
  3448:  5f 4f        sbci r21, 0xff                 
  344a:  65 e0        ldi r22, 0x05                  
  344c:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0005 (5)
  344e:  84 e0        ldi r24, 0x04                  
  3450:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0004 (4)
  3452:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  3456:  ae 01        movw r21:r20, r29:r28          
  3458:  49 5f        subi r20, 0xf9                 
  345a:  5f 4f        sbci r21, 0xff                 
  345c:  66 e0        ldi r22, 0x06                  
  345e:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0006 (6)
  3460:  84 e0        ldi r24, 0x04                  
  3462:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0004 (4)
  3464:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  3468:  ae 01        movw r21:r20, r29:r28          
  346a:  49 5f        subi r20, 0xf9                 
  346c:  5f 4f        sbci r21, 0xff                 
  346e:  67 e0        ldi r22, 0x07                  
  3470:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0007 (7)
  3472:  84 e0        ldi r24, 0x04                  
  3474:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0004 (4)
  3476:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  347a:  ae 01        movw r21:r20, r29:r28          
  347c:  43 5f        subi r20, 0xf3                 
  347e:  5f 4f        sbci r21, 0xff                 
  3480:  63 e0        ldi r22, 0x03                  
  3482:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0003 (3)
  3484:  90 e0        ldi r25, 0x00                  
  3486:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  3488:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  348c:  ae 01        movw r21:r20, r29:r28          
  348e:  43 5f        subi r20, 0xf3                 
  3490:  5f 4f        sbci r21, 0xff                 
  3492:  64 e0        ldi r22, 0x04                  
  3494:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0004 (4)
  3496:  90 e0        ldi r25, 0x00                  
  3498:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  349a:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  349e:  ae 01        movw r21:r20, r29:r28          
  34a0:  43 5f        subi r20, 0xf3                 
  34a2:  5f 4f        sbci r21, 0xff                 
  34a4:  62 e0        ldi r22, 0x02                  
  34a6:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0002 (2)
  34a8:  81 e0        ldi r24, 0x01                  
  34aa:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0001 (1)
  34ac:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  34b0:  ae 01        movw r21:r20, r29:r28          
  34b2:  43 5f        subi r20, 0xf3                 
  34b4:  5f 4f        sbci r21, 0xff                 
  34b6:  65 e0        ldi r22, 0x05                  
  34b8:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0005 (5)
  34ba:  81 e0        ldi r24, 0x01                  
  34bc:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0001 (1)
  34be:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  34c2:  ae 01        movw r21:r20, r29:r28          
  34c4:  43 5f        subi r20, 0xf3                 
  34c6:  5f 4f        sbci r21, 0xff                 
  34c8:  70 e0        ldi r23, 0x00                  
  34ca:  60 e0        ldi r22, 0x00                  ; r23:r22 = 0x0000 (0)
  34cc:  82 e0        ldi r24, 0x02                  
  34ce:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0002 (2)
  34d0:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  34d4:  ae 01        movw r21:r20, r29:r28          
  34d6:  43 5f        subi r20, 0xf3                 
  34d8:  5f 4f        sbci r21, 0xff                 
  34da:  61 e0        ldi r22, 0x01                  
  34dc:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0001 (1)
  34de:  82 e0        ldi r24, 0x02                  
  34e0:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0002 (2)
  34e2:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  34e6:  ae 01        movw r21:r20, r29:r28          
  34e8:  43 5f        subi r20, 0xf3                 
  34ea:  5f 4f        sbci r21, 0xff                 
  34ec:  66 e0        ldi r22, 0x06                  
  34ee:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0006 (6)
  34f0:  82 e0        ldi r24, 0x02                  
  34f2:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0002 (2)
  34f4:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  34f8:  ae 01        movw r21:r20, r29:r28          
  34fa:  43 5f        subi r20, 0xf3                 
  34fc:  5f 4f        sbci r21, 0xff                 
  34fe:  67 e0        ldi r22, 0x07                  
  3500:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0007 (7)
  3502:  82 e0        ldi r24, 0x02                  
  3504:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0002 (2)
  3506:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  350a:  ae 01        movw r21:r20, r29:r28          
  350c:  43 5f        subi r20, 0xf3                 
  350e:  5f 4f        sbci r21, 0xff                 
  3510:  62 e0        ldi r22, 0x02                  
  3512:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0002 (2)
  3514:  83 e0        ldi r24, 0x03                  
  3516:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0003 (3)
  3518:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  351c:  ae 01        movw r21:r20, r29:r28          
  351e:  43 5f        subi r20, 0xf3                 
  3520:  5f 4f        sbci r21, 0xff                 
  3522:  65 e0        ldi r22, 0x05                  
  3524:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0005 (5)
  3526:  83 e0        ldi r24, 0x03                  
  3528:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0003 (3)
  352a:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  352e:  ae 01        movw r21:r20, r29:r28          
  3530:  43 5f        subi r20, 0xf3                 
  3532:  5f 4f        sbci r21, 0xff                 
  3534:  63 e0        ldi r22, 0x03                  
  3536:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0003 (3)
  3538:  84 e0        ldi r24, 0x04                  
  353a:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0004 (4)
  353c:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  3540:  ae 01        movw r21:r20, r29:r28          
  3542:  43 5f        subi r20, 0xf3                 
  3544:  5f 4f        sbci r21, 0xff                 
  3546:  64 e0        ldi r22, 0x04                  
  3548:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0004 (4)
  354a:  84 e0        ldi r24, 0x04                  
  354c:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0004 (4)
  354e:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  3552:  ae 01        movw r21:r20, r29:r28          
  3554:  49 5f        subi r20, 0xf9                 
  3556:  5f 4f        sbci r21, 0xff                 
  3558:  63 e0        ldi r22, 0x03                  
  355a:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0003 (3)
  355c:  81 e0        ldi r24, 0x01                  
  355e:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0001 (1)
  3560:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  3564:  ae 01        movw r21:r20, r29:r28          
  3566:  49 5f        subi r20, 0xf9                 
  3568:  5f 4f        sbci r21, 0xff                 
  356a:  62 e0        ldi r22, 0x02                  
  356c:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0002 (2)
  356e:  82 e0        ldi r24, 0x02                  
  3570:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0002 (2)
  3572:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  3576:  ae 01        movw r21:r20, r29:r28          
  3578:  49 5f        subi r20, 0xf9                 
  357a:  5f 4f        sbci r21, 0xff                 
  357c:  64 e0        ldi r22, 0x04                  
  357e:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0004 (4)
  3580:  82 e0        ldi r24, 0x02                  
  3582:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0002 (2)
  3584:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  3588:  ae 01        movw r21:r20, r29:r28          
  358a:  49 5f        subi r20, 0xf9                 
  358c:  5f 4f        sbci r21, 0xff                 
  358e:  63 e0        ldi r22, 0x03                  
  3590:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0003 (3)
  3592:  83 e0        ldi r24, 0x03                  
  3594:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0003 (3)
  3596:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  359a:  ae 01        movw r21:r20, r29:r28          
  359c:  43 5f        subi r20, 0xf3                 
  359e:  5f 4f        sbci r21, 0xff                 
  35a0:  64 e0        ldi r22, 0x04                  
  35a2:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0004 (4)
  35a4:  81 e0        ldi r24, 0x01                  
  35a6:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0001 (1)
  35a8:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  35ac:  ae 01        movw r21:r20, r29:r28          
  35ae:  43 5f        subi r20, 0xf3                 
  35b0:  5f 4f        sbci r21, 0xff                 
  35b2:  65 e0        ldi r22, 0x05                  
  35b4:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0005 (5)
  35b6:  82 e0        ldi r24, 0x02                  
  35b8:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0002 (2)
  35ba:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  35be:  ae 01        movw r21:r20, r29:r28          
  35c0:  43 5f        subi r20, 0xf3                 
  35c2:  5f 4f        sbci r21, 0xff                 
  35c4:  64 e0        ldi r22, 0x04                  
  35c6:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0004 (4)
  35c8:  83 e0        ldi r24, 0x03                  
  35ca:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0003 (3)
  35cc:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  35d0:  ae 01        movw r21:r20, r29:r28          
  35d2:  4f 5f        subi r20, 0xff                 
  35d4:  5f 4f        sbci r21, 0xff                 
  35d6:  63 e0        ldi r22, 0x03                  
  35d8:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0003 (3)
  35da:  82 e0        ldi r24, 0x02                  
  35dc:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0002 (2)
  35de:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  35e2:  68 ee        ldi r22, 0xe8                  ; r23:r22 = 0x00e8 (232)
  35e4:  73 e0        ldi r23, 0x03                  ; r23:r22 = 0x03e8 (1000)
  35e6:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  35e8:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  35ea:  0e 94 7b 02  call delay                     ; -> 0x04f6
  35ee:  ae 01        movw r21:r20, r29:r28          
  35f0:  49 5f        subi r20, 0xf9                 
  35f2:  5f 4f        sbci r21, 0xff                 
  35f4:  64 e0        ldi r22, 0x04                  
  35f6:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0004 (4)
  35f8:  81 e0        ldi r24, 0x01                  
  35fa:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0001 (1)
  35fc:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  3600:  ae 01        movw r21:r20, r29:r28          
  3602:  49 5f        subi r20, 0xf9                 
  3604:  5f 4f        sbci r21, 0xff                 
  3606:  63 e0        ldi r22, 0x03                  
  3608:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0003 (3)
  360a:  82 e0        ldi r24, 0x02                  
  360c:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0002 (2)
  360e:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  3612:  ae 01        movw r21:r20, r29:r28          
  3614:  49 5f        subi r20, 0xf9                 
  3616:  5f 4f        sbci r21, 0xff                 
  3618:  65 e0        ldi r22, 0x05                  
  361a:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0005 (5)
  361c:  82 e0        ldi r24, 0x02                  
  361e:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0002 (2)
  3620:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  3624:  ae 01        movw r21:r20, r29:r28          
  3626:  49 5f        subi r20, 0xf9                 
  3628:  5f 4f        sbci r21, 0xff                 
  362a:  64 e0        ldi r22, 0x04                  
  362c:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0004 (4)
  362e:  83 e0        ldi r24, 0x03                  
  3630:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0003 (3)
  3632:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  3636:  ae 01        movw r21:r20, r29:r28          
  3638:  43 5f        subi r20, 0xf3                 
  363a:  5f 4f        sbci r21, 0xff                 
  363c:  63 e0        ldi r22, 0x03                  
  363e:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0003 (3)
  3640:  81 e0        ldi r24, 0x01                  
  3642:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0001 (1)
  3644:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  3648:  ae 01        movw r21:r20, r29:r28          
  364a:  43 5f        subi r20, 0xf3                 
  364c:  5f 4f        sbci r21, 0xff                 
  364e:  62 e0        ldi r22, 0x02                  
  3650:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0002 (2)
  3652:  82 e0        ldi r24, 0x02                  
  3654:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0002 (2)
  3656:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  365a:  ae 01        movw r21:r20, r29:r28          
  365c:  43 5f        subi r20, 0xf3                 
  365e:  5f 4f        sbci r21, 0xff                 
  3660:  63 e0        ldi r22, 0x03                  
  3662:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0003 (3)
  3664:  83 e0        ldi r24, 0x03                  
  3666:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0003 (3)
  3668:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  366c:  ae 01        movw r21:r20, r29:r28          
  366e:  4f 5f        subi r20, 0xff                 
  3670:  5f 4f        sbci r21, 0xff                 
  3672:  64 e0        ldi r22, 0x04                  
  3674:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0004 (4)
  3676:  82 e0        ldi r24, 0x02                  
  3678:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0002 (2)
  367a:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  367e:  68 ee        ldi r22, 0xe8                  ; r23:r22 = 0x00e8 (232)
  3680:  73 e0        ldi r23, 0x03                  ; r23:r22 = 0x03e8 (1000)
  3682:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  3684:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  3686:  0e 94 7b 02  call delay                     ; -> 0x04f6
  368a:  ae 01        movw r21:r20, r29:r28          
  368c:  49 5f        subi r20, 0xf9                 
  368e:  5f 4f        sbci r21, 0xff                 
  3690:  63 e0        ldi r22, 0x03                  
  3692:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0003 (3)
  3694:  81 e0        ldi r24, 0x01                  
  3696:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0001 (1)
  3698:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  369c:  ae 01        movw r21:r20, r29:r28          
  369e:  49 5f        subi r20, 0xf9                 
  36a0:  5f 4f        sbci r21, 0xff                 
  36a2:  62 e0        ldi r22, 0x02                  
  36a4:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0002 (2)
  36a6:  82 e0        ldi r24, 0x02                  
  36a8:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0002 (2)
  36aa:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  36ae:  ae 01        movw r21:r20, r29:r28          
  36b0:  49 5f        subi r20, 0xf9                 
  36b2:  5f 4f        sbci r21, 0xff                 
  36b4:  64 e0        ldi r22, 0x04                  
  36b6:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0004 (4)
  36b8:  82 e0        ldi r24, 0x02                  
  36ba:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0002 (2)
  36bc:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  36c0:  ae 01        movw r21:r20, r29:r28          
  36c2:  49 5f        subi r20, 0xf9                 
  36c4:  5f 4f        sbci r21, 0xff                 
  36c6:  63 e0        ldi r22, 0x03                  
  36c8:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0003 (3)
  36ca:  83 e0        ldi r24, 0x03                  
  36cc:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0003 (3)
  36ce:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  36d2:  ae 01        movw r21:r20, r29:r28          
  36d4:  43 5f        subi r20, 0xf3                 
  36d6:  5f 4f        sbci r21, 0xff                 
  36d8:  64 e0        ldi r22, 0x04                  
  36da:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0004 (4)
  36dc:  81 e0        ldi r24, 0x01                  
  36de:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0001 (1)
  36e0:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  36e4:  ae 01        movw r21:r20, r29:r28          
  36e6:  43 5f        subi r20, 0xf3                 
  36e8:  5f 4f        sbci r21, 0xff                 
  36ea:  65 e0        ldi r22, 0x05                  
  36ec:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0005 (5)
  36ee:  82 e0        ldi r24, 0x02                  
  36f0:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0002 (2)
  36f2:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  36f6:  ae 01        movw r21:r20, r29:r28          
  36f8:  43 5f        subi r20, 0xf3                 
  36fa:  5f 4f        sbci r21, 0xff                 
  36fc:  64 e0        ldi r22, 0x04                  
  36fe:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0004 (4)
  3700:  83 e0        ldi r24, 0x03                  
  3702:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0003 (3)
  3704:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  3708:  ae 01        movw r21:r20, r29:r28          
  370a:  4f 5f        subi r20, 0xff                 
  370c:  5f 4f        sbci r21, 0xff                 
  370e:  63 e0        ldi r22, 0x03                  
  3710:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0003 (3)
  3712:  82 e0        ldi r24, 0x02                  
  3714:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0002 (2)
  3716:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  371a:  68 ee        ldi r22, 0xe8                  ; r23:r22 = 0x00e8 (232)
  371c:  73 e0        ldi r23, 0x03                  ; r23:r22 = 0x03e8 (1000)
  371e:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  3720:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  3722:  0e 94 7b 02  call delay                     ; -> 0x04f6
  3726:  ae 01        movw r21:r20, r29:r28          
  3728:  43 5f        subi r20, 0xf3                 
  372a:  5f 4f        sbci r21, 0xff                 
  372c:  63 e0        ldi r22, 0x03                  
  372e:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0003 (3)
  3730:  81 e0        ldi r24, 0x01                  
  3732:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0001 (1)
  3734:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  3738:  ae 01        movw r21:r20, r29:r28          
  373a:  43 5f        subi r20, 0xf3                 
  373c:  5f 4f        sbci r21, 0xff                 
  373e:  62 e0        ldi r22, 0x02                  
  3740:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0002 (2)
  3742:  82 e0        ldi r24, 0x02                  
  3744:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0002 (2)
  3746:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  374a:  ae 01        movw r21:r20, r29:r28          
  374c:  43 5f        subi r20, 0xf3                 
  374e:  5f 4f        sbci r21, 0xff                 
  3750:  63 e0        ldi r22, 0x03                  
  3752:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0003 (3)
  3754:  83 e0        ldi r24, 0x03                  
  3756:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0003 (3)
  3758:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  375c:  ae 01        movw r21:r20, r29:r28          
  375e:  4f 5f        subi r20, 0xff                 
  3760:  5f 4f        sbci r21, 0xff                 
  3762:  64 e0        ldi r22, 0x04                  
  3764:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0004 (4)
  3766:  81 e0        ldi r24, 0x01                  
  3768:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0001 (1)
  376a:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  376e:  ae 01        movw r21:r20, r29:r28          
  3770:  4f 5f        subi r20, 0xff                 
  3772:  5f 4f        sbci r21, 0xff                 
  3774:  63 e0        ldi r22, 0x03                  
  3776:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0003 (3)
  3778:  82 e0        ldi r24, 0x02                  
  377a:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0002 (2)
  377c:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  3780:  ae 01        movw r21:r20, r29:r28          
  3782:  4f 5f        subi r20, 0xff                 
  3784:  5f 4f        sbci r21, 0xff                 
  3786:  65 e0        ldi r22, 0x05                  
  3788:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0005 (5)
  378a:  82 e0        ldi r24, 0x02                  
  378c:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0002 (2)
  378e:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  3792:  ae 01        movw r21:r20, r29:r28          
  3794:  4f 5f        subi r20, 0xff                 
  3796:  5f 4f        sbci r21, 0xff                 
  3798:  64 e0        ldi r22, 0x04                  
  379a:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0004 (4)
  379c:  83 e0        ldi r24, 0x03                  
  379e:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0003 (3)
  37a0:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  37a4:  ae 01        movw r21:r20, r29:r28          
  37a6:  4f 5f        subi r20, 0xff                 
  37a8:  5f 4f        sbci r21, 0xff                 
  37aa:  64 e0        ldi r22, 0x04                  
  37ac:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0004 (4)
  37ae:  82 e0        ldi r24, 0x02                  
  37b0:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0002 (2)
  37b2:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  37b6:  68 ee        ldi r22, 0xe8                  ; r23:r22 = 0x00e8 (232)
  37b8:  73 e0        ldi r23, 0x03                  ; r23:r22 = 0x03e8 (1000)
  37ba:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  37bc:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  37be:  0e 94 7b 02  call delay                     ; -> 0x04f6
  37c2:  ae 01        movw r21:r20, r29:r28          
  37c4:  43 5f        subi r20, 0xf3                 
  37c6:  5f 4f        sbci r21, 0xff                 
  37c8:  64 e0        ldi r22, 0x04                  
  37ca:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0004 (4)
  37cc:  81 e0        ldi r24, 0x01                  
  37ce:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0001 (1)
  37d0:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  37d4:  ae 01        movw r21:r20, r29:r28          
  37d6:  43 5f        subi r20, 0xf3                 
  37d8:  5f 4f        sbci r21, 0xff                 
  37da:  65 e0        ldi r22, 0x05                  
  37dc:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0005 (5)
  37de:  82 e0        ldi r24, 0x02                  
  37e0:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0002 (2)
  37e2:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  37e6:  ae 01        movw r21:r20, r29:r28          
  37e8:  43 5f        subi r20, 0xf3                 
  37ea:  5f 4f        sbci r21, 0xff                 
  37ec:  64 e0        ldi r22, 0x04                  
  37ee:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0004 (4)
  37f0:  83 e0        ldi r24, 0x03                  
  37f2:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0003 (3)
  37f4:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  37f8:  ae 01        movw r21:r20, r29:r28          
  37fa:  4f 5f        subi r20, 0xff                 
  37fc:  5f 4f        sbci r21, 0xff                 
  37fe:  63 e0        ldi r22, 0x03                  
  3800:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0003 (3)
  3802:  81 e0        ldi r24, 0x01                  
  3804:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0001 (1)
  3806:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  380a:  ae 01        movw r21:r20, r29:r28          
  380c:  4f 5f        subi r20, 0xff                 
  380e:  5f 4f        sbci r21, 0xff                 
  3810:  62 e0        ldi r22, 0x02                  
  3812:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0002 (2)
  3814:  82 e0        ldi r24, 0x02                  
  3816:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0002 (2)
  3818:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  381c:  ae 01        movw r21:r20, r29:r28          
  381e:  4f 5f        subi r20, 0xff                 
  3820:  5f 4f        sbci r21, 0xff                 
  3822:  64 e0        ldi r22, 0x04                  
  3824:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0004 (4)
  3826:  82 e0        ldi r24, 0x02                  
  3828:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0002 (2)
  382a:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  382e:  ae 01        movw r21:r20, r29:r28          
  3830:  4f 5f        subi r20, 0xff                 
  3832:  5f 4f        sbci r21, 0xff                 
  3834:  63 e0        ldi r22, 0x03                  
  3836:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0003 (3)
  3838:  83 e0        ldi r24, 0x03                  
  383a:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0003 (3)
  383c:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  3840:  ae 01        movw r21:r20, r29:r28          
  3842:  4f 5f        subi r20, 0xff                 
  3844:  5f 4f        sbci r21, 0xff                 
  3846:  63 e0        ldi r22, 0x03                  
  3848:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0003 (3)
  384a:  82 e0        ldi r24, 0x02                  
  384c:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0002 (2)
  384e:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  3852:  6e ee        ldi r22, 0xee                  ; r23:r22 = 0x00ee (238)
  3854:  72 e0        ldi r23, 0x02                  ; r23:r22 = 0x02ee (750)
  3856:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  3858:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  385a:  0e 94 7b 02  call delay                     ; -> 0x04f6
  385e:  ae 01        movw r21:r20, r29:r28          
  3860:  43 5f        subi r20, 0xf3                 
  3862:  5f 4f        sbci r21, 0xff                 
  3864:  63 e0        ldi r22, 0x03                  
  3866:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0003 (3)
  3868:  81 e0        ldi r24, 0x01                  
  386a:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0001 (1)
  386c:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  3870:  ae 01        movw r21:r20, r29:r28          
  3872:  43 5f        subi r20, 0xf3                 
  3874:  5f 4f        sbci r21, 0xff                 
  3876:  62 e0        ldi r22, 0x02                  
  3878:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0002 (2)
  387a:  82 e0        ldi r24, 0x02                  
  387c:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0002 (2)
  387e:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  3882:  ae 01        movw r21:r20, r29:r28          
  3884:  43 5f        subi r20, 0xf3                 
  3886:  5f 4f        sbci r21, 0xff                 
  3888:  63 e0        ldi r22, 0x03                  
  388a:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0003 (3)
  388c:  83 e0        ldi r24, 0x03                  
  388e:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0003 (3)
  3890:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  3894:  ae 01        movw r21:r20, r29:r28          
  3896:  4f 5f        subi r20, 0xff                 
  3898:  5f 4f        sbci r21, 0xff                 
  389a:  64 e0        ldi r22, 0x04                  
  389c:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0004 (4)
  389e:  81 e0        ldi r24, 0x01                  
  38a0:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0001 (1)
  38a2:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  38a6:  ae 01        movw r21:r20, r29:r28          
  38a8:  4f 5f        subi r20, 0xff                 
  38aa:  5f 4f        sbci r21, 0xff                 
  38ac:  63 e0        ldi r22, 0x03                  
  38ae:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0003 (3)
  38b0:  82 e0        ldi r24, 0x02                  
  38b2:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0002 (2)
  38b4:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  38b8:  ae 01        movw r21:r20, r29:r28          
  38ba:  4f 5f        subi r20, 0xff                 
  38bc:  5f 4f        sbci r21, 0xff                 
  38be:  65 e0        ldi r22, 0x05                  
  38c0:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0005 (5)
  38c2:  82 e0        ldi r24, 0x02                  
  38c4:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0002 (2)
  38c6:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  38ca:  ae 01        movw r21:r20, r29:r28          
  38cc:  4f 5f        subi r20, 0xff                 
  38ce:  5f 4f        sbci r21, 0xff                 
  38d0:  64 e0        ldi r22, 0x04                  
  38d2:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0004 (4)
  38d4:  83 e0        ldi r24, 0x03                  
  38d6:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0003 (3)
  38d8:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  38dc:  ae 01        movw r21:r20, r29:r28          
  38de:  4f 5f        subi r20, 0xff                 
  38e0:  5f 4f        sbci r21, 0xff                 
  38e2:  64 e0        ldi r22, 0x04                  
  38e4:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0004 (4)
  38e6:  82 e0        ldi r24, 0x02                  
  38e8:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0002 (2)
  38ea:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  38ee:  6e ee        ldi r22, 0xee                  ; r23:r22 = 0x00ee (238)
  38f0:  72 e0        ldi r23, 0x02                  ; r23:r22 = 0x02ee (750)
  38f2:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  38f4:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  38f6:  0e 94 7b 02  call delay                     ; -> 0x04f6
  38fa:  ae 01        movw r21:r20, r29:r28          
  38fc:  43 5f        subi r20, 0xf3                 
  38fe:  5f 4f        sbci r21, 0xff                 
  3900:  64 e0        ldi r22, 0x04                  
  3902:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0004 (4)
  3904:  81 e0        ldi r24, 0x01                  
  3906:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0001 (1)
  3908:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  390c:  ae 01        movw r21:r20, r29:r28          
  390e:  43 5f        subi r20, 0xf3                 
  3910:  5f 4f        sbci r21, 0xff                 
  3912:  65 e0        ldi r22, 0x05                  
  3914:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0005 (5)
  3916:  82 e0        ldi r24, 0x02                  
  3918:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0002 (2)
  391a:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  391e:  ae 01        movw r21:r20, r29:r28          
  3920:  43 5f        subi r20, 0xf3                 
  3922:  5f 4f        sbci r21, 0xff                 
  3924:  64 e0        ldi r22, 0x04                  
  3926:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0004 (4)
  3928:  83 e0        ldi r24, 0x03                  
  392a:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0003 (3)
  392c:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  3930:  ae 01        movw r21:r20, r29:r28          
  3932:  4f 5f        subi r20, 0xff                 
  3934:  5f 4f        sbci r21, 0xff                 
  3936:  63 e0        ldi r22, 0x03                  
  3938:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0003 (3)
  393a:  81 e0        ldi r24, 0x01                  
  393c:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0001 (1)
  393e:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  3942:  ae 01        movw r21:r20, r29:r28          
  3944:  4f 5f        subi r20, 0xff                 
  3946:  5f 4f        sbci r21, 0xff                 
  3948:  62 e0        ldi r22, 0x02                  
  394a:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0002 (2)
  394c:  82 e0        ldi r24, 0x02                  
  394e:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0002 (2)
  3950:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  3954:  ae 01        movw r21:r20, r29:r28          
  3956:  4f 5f        subi r20, 0xff                 
  3958:  5f 4f        sbci r21, 0xff                 
  395a:  64 e0        ldi r22, 0x04                  
  395c:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0004 (4)
  395e:  82 e0        ldi r24, 0x02                  
  3960:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0002 (2)
  3962:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  3966:  ae 01        movw r21:r20, r29:r28          
  3968:  4f 5f        subi r20, 0xff                 
  396a:  5f 4f        sbci r21, 0xff                 
  396c:  63 e0        ldi r22, 0x03                  
  396e:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0003 (3)
  3970:  83 e0        ldi r24, 0x03                  
  3972:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0003 (3)
  3974:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  3978:  ae 01        movw r21:r20, r29:r28          
  397a:  4f 5f        subi r20, 0xff                 
  397c:  5f 4f        sbci r21, 0xff                 
  397e:  63 e0        ldi r22, 0x03                  
  3980:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0003 (3)
  3982:  82 e0        ldi r24, 0x02                  
  3984:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0002 (2)
  3986:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  398a:  6e ee        ldi r22, 0xee                  ; r23:r22 = 0x00ee (238)
  398c:  72 e0        ldi r23, 0x02                  ; r23:r22 = 0x02ee (750)
  398e:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  3990:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  3992:  0e 94 7b 02  call delay                     ; -> 0x04f6
  3996:  ae 01        movw r21:r20, r29:r28          
  3998:  43 5f        subi r20, 0xf3                 
  399a:  5f 4f        sbci r21, 0xff                 
  399c:  63 e0        ldi r22, 0x03                  
  399e:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0003 (3)
  39a0:  81 e0        ldi r24, 0x01                  
  39a2:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0001 (1)
  39a4:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  39a8:  ae 01        movw r21:r20, r29:r28          
  39aa:  43 5f        subi r20, 0xf3                 
  39ac:  5f 4f        sbci r21, 0xff                 
  39ae:  62 e0        ldi r22, 0x02                  
  39b0:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0002 (2)
  39b2:  82 e0        ldi r24, 0x02                  
  39b4:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0002 (2)
  39b6:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  39ba:  ae 01        movw r21:r20, r29:r28          
  39bc:  43 5f        subi r20, 0xf3                 
  39be:  5f 4f        sbci r21, 0xff                 
  39c0:  63 e0        ldi r22, 0x03                  
  39c2:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0003 (3)
  39c4:  83 e0        ldi r24, 0x03                  
  39c6:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0003 (3)
  39c8:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  39cc:  ae 01        movw r21:r20, r29:r28          
  39ce:  4f 5f        subi r20, 0xff                 
  39d0:  5f 4f        sbci r21, 0xff                 
  39d2:  64 e0        ldi r22, 0x04                  
  39d4:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0004 (4)
  39d6:  81 e0        ldi r24, 0x01                  
  39d8:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0001 (1)
  39da:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  39de:  ae 01        movw r21:r20, r29:r28          
  39e0:  4f 5f        subi r20, 0xff                 
  39e2:  5f 4f        sbci r21, 0xff                 
  39e4:  63 e0        ldi r22, 0x03                  
  39e6:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0003 (3)
  39e8:  82 e0        ldi r24, 0x02                  
  39ea:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0002 (2)
  39ec:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  39f0:  ae 01        movw r21:r20, r29:r28          
  39f2:  4f 5f        subi r20, 0xff                 
  39f4:  5f 4f        sbci r21, 0xff                 
  39f6:  65 e0        ldi r22, 0x05                  
  39f8:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0005 (5)
  39fa:  82 e0        ldi r24, 0x02                  
  39fc:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0002 (2)
  39fe:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  3a02:  ae 01        movw r21:r20, r29:r28          
  3a04:  4f 5f        subi r20, 0xff                 
  3a06:  5f 4f        sbci r21, 0xff                 
  3a08:  64 e0        ldi r22, 0x04                  
  3a0a:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0004 (4)
  3a0c:  83 e0        ldi r24, 0x03                  
  3a0e:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0003 (3)
  3a10:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  3a14:  ae 01        movw r21:r20, r29:r28          
  3a16:  4f 5f        subi r20, 0xff                 
  3a18:  5f 4f        sbci r21, 0xff                 
  3a1a:  64 e0        ldi r22, 0x04                  
  3a1c:  70 e0        ldi r23, 0x00                  ; r23:r22 = 0x0004 (4)
  3a1e:  82 e0        ldi r24, 0x02                  
  3a20:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0002 (2)
  3a22:  0e 94 1f 06  call USR_led                   ; -> 0x0c3e
  3a26:  6e ee        ldi r22, 0xee                  ; r23:r22 = 0x00ee (238)
  3a28:  72 e0        ldi r23, 0x02                  ; r23:r22 = 0x02ee (750)
  3a2a:  80 e0        ldi r24, 0x00                  ; r25:r24 = 0x0000 (0)
  3a2c:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0000 (0)
  3a2e:  0c 94 7d 12  jmp L_24fa                     ; -> 0x24fa
L_3a32:
  3a32:  01 30        cpi r16, 0x01                  
  3a34:  11 05        cpc r17, r1                    
  3a36:  11 f0        breq L_3a3c                    ; -> 0x3a3c
  3a38:  0c 94 e4 0b  jmp L_17c8                     ; -> 0x17c8
L_3a3c:
  3a3c:  01 97        sbiw r25:r24, 1                
  3a3e:  11 f0        breq L_3a44                    ; -> 0x3a44
  3a40:  0c 94 e4 0b  jmp L_17c8                     ; -> 0x17c8
L_3a44:
  3a44:  80 91 00 01  lds r24, 0x0100                ; v_0100
  3a48:  90 91 01 01  lds r25, 0x0101                ; v_0101
  3a4c:  02 96        adiw r25:r24, 2                
  3a4e:  8e 31        cpi r24, 0x1e                  
  3a50:  91 05        cpc r25, r1                    
  3a52:  34 f0        brlt L_3a60                    ; -> 0x3a60
  3a54:  90 92 01 01  sts 0x0101, r9                 ; v_0101
  3a58:  80 92 00 01  sts 0x0100, r8                 ; v_0100
  3a5c:  0c 94 e4 0b  jmp L_17c8                     ; -> 0x17c8
L_3a60:
  3a60:  90 93 01 01  sts 0x0101, r25                ; v_0101
  3a64:  80 93 00 01  sts 0x0100, r24                ; v_0100
  3a68:  0c 94 e4 0b  jmp L_17c8                     ; -> 0x17c8
L_3a6c:
  3a6c:  01 97        sbiw r25:r24, 1                
  3a6e:  11 f0        breq L_3a74                    ; -> 0x3a74
  3a70:  0c 94 e4 0b  jmp L_17c8                     ; -> 0x17c8
L_3a74:
  3a74:  70 e0        ldi r23, 0x00                  
  3a76:  60 e0        ldi r22, 0x00                  ; r23:r22 = 0x0000 (0)
  3a78:  86 e1        ldi r24, 0x16                  
  3a7a:  0e 94 c4 03  call DFP_sendStack             ; -> 0x0788
  3a7e:  1a 82        std Y+2, r1                    
  3a80:  19 82        std Y+1, r1                    
  3a82:  1c 82        std Y+4, r1                    
  3a84:  1b 82        std Y+3, r1                    
  3a86:  1e 82        std Y+6, r1                    
  3a88:  1d 82        std Y+5, r1                    
  3a8a:  ae 01        movw r21:r20, r29:r28          
  3a8c:  4f 5f        subi r20, 0xff                 
  3a8e:  5f 4f        sbci r21, 0xff                 
  3a90:  70 e0        ldi r23, 0x00                  
  3a92:  60 e0        ldi r22, 0x00                  ; r23:r22 = 0x0000 (0)
  3a94:  89 e0        ldi r24, 0x09                  
  3a96:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0009 (9)
  3a98:  ff cb        rjmp L_3298                    ; -> 0x3298

; ===== F_3a9a =====
F_3a9a:
  3a9a:  cf 93        push r28                       
  3a9c:  df 93        push r29                       
  3a9e:  ec 01        movw r29:r28, r25:r24          
  3aa0:  89 85        ldd r24, Y+9                   
  3aa2:  9a 85        ldd r25, Y+10                  
  3aa4:  0e 94 50 1e  call F_3ca0                    ; -> 0x3ca0
  3aa8:  8e 81        ldd r24, Y+6                   
  3aaa:  9f 81        ldd r25, Y+7                   
  3aac:  97 fd        sbrc r25, 7                    
  3aae:  05 c0        rjmp L_3aba                    ; -> 0x3aba
  3ab0:  60 e0        ldi r22, 0x00                  
  3ab2:  df 91        pop r29                        
  3ab4:  cf 91        pop r28                        
  3ab6:  0c 94 25 02  jmp pinMode                    ; -> 0x044a
L_3aba:
  3aba:  df 91        pop r29                        
  3abc:  cf 91        pop r28                        
  3abe:  08 95        ret                            
  3ac0:  8e e9        ldi r24, 0x9e                  
  3ac2:  93 e0        ldi r25, 0x03                  ; r25:r24 = 0x039e (926) strip4
  3ac4:  0e 94 4d 1d  call F_3a9a                    ; -> 0x3a9a
  3ac8:  84 eb        ldi r24, 0xb4                  ; r25:r24 = 0x03b4 (948) strip3
  3aca:  93 e0        ldi r25, 0x03                  ; r25:r24 = 0x03b4 (948) strip3
  3acc:  0e 94 4d 1d  call F_3a9a                    ; -> 0x3a9a
  3ad0:  8a ec        ldi r24, 0xca                  ; r25:r24 = 0x03ca (970) strip2
  3ad2:  93 e0        ldi r25, 0x03                  ; r25:r24 = 0x03ca (970) strip2
  3ad4:  0e 94 4d 1d  call F_3a9a                    ; -> 0x3a9a
  3ad8:  80 ee        ldi r24, 0xe0                  ; r25:r24 = 0x03e0 (992) strip1
  3ada:  93 e0        ldi r25, 0x03                  ; r25:r24 = 0x03e0 (992) strip1
  3adc:  0e 94 4d 1d  call F_3a9a                    ; -> 0x3a9a
  3ae0:  84 e8        ldi r24, 0x84                  ; r25:r24 = 0x0384 (900)
  3ae2:  92 e0        ldi r25, 0x02                  ; r25:r24 = 0x0284 (644)
  3ae4:  90 93 1d 04  sts 0x041d, r25                ; v_041d
  3ae8:  80 93 1c 04  sts 0x041c, r24                ; mySoftwareSerial
  3aec:  80 91 f9 02  lds r24, 0x02f9                ; v_02f9
  3af0:  90 91 fa 02  lds r25, 0x02fa                ; v_02fa
  3af4:  8c 51        subi r24, 0x1c                 
  3af6:  94 40        sbci r25, 0x04                 
  3af8:  71 f4        brne L_3b16                    ; -> 0x3b16
  3afa:  e0 91 2f 04  lds r30, 0x042f                ; v_042f
  3afe:  f0 91 30 04  lds r31, 0x0430                ; v_0430
  3b02:  90 81        ld r25, Z                      
  3b04:  80 91 31 04  lds r24, 0x0431                ; v_0431
  3b08:  80 95        com r24                        
  3b0a:  89 23        and r24, r25                   
  3b0c:  80 83        st Z, r24                      
  3b0e:  10 92 fa 02  sts 0x02fa, r1                 ; v_02fa
  3b12:  10 92 f9 02  sts 0x02f9, r1                 ; v_02f9
L_3b16:
  3b16:  08 95        ret                            

; ===== F_3b18 =====
F_3b18:
  3b18:  a1 e2        ldi r26, 0x21                  
  3b1a:  1a 2e        mov r1, r26                    
  3b1c:  aa 1b        sub r26, r26                   
  3b1e:  bb 1b        sub r27, r27                   
  3b20:  fd 01        movw r31:r30, r27:r26          
  3b22:  0d c0        rjmp L_3b3e                    ; -> 0x3b3e
L_3b24:
  3b24:  aa 1f        rol r26                        
  3b26:  bb 1f        rol r27                        
  3b28:  ee 1f        rol r30                        
  3b2a:  ff 1f        rol r31                        
  3b2c:  a2 17        cp r26, r18                    
  3b2e:  b3 07        cpc r27, r19                   
  3b30:  e4 07        cpc r30, r20                   
  3b32:  f5 07        cpc r31, r21                   
  3b34:  20 f0        brcs L_3b3e                    ; -> 0x3b3e
  3b36:  a2 1b        sub r26, r18                   
  3b38:  b3 0b        sbc r27, r19                   
  3b3a:  e4 0b        sbc r30, r20                   
  3b3c:  f5 0b        sbc r31, r21                   
L_3b3e:
  3b3e:  66 1f        rol r22                        
  3b40:  77 1f        rol r23                        
  3b42:  88 1f        rol r24                        
  3b44:  99 1f        rol r25                        
  3b46:  1a 94        dec r1                         
  3b48:  69 f7        brne L_3b24                    ; -> 0x3b24
  3b4a:  60 95        com r22                        
  3b4c:  70 95        com r23                        
  3b4e:  80 95        com r24                        
  3b50:  90 95        com r25                        
  3b52:  9b 01        movw r19:r18, r23:r22          
  3b54:  ac 01        movw r21:r20, r25:r24          
  3b56:  bd 01        movw r23:r22, r27:r26          
  3b58:  cf 01        movw r25:r24, r31:r30          
  3b5a:  08 95        ret                            

; ===== ctor_call =====
ctor_call:
  3b5c:  ee 0f        lsl r30                        
  3b5e:  ff 1f        rol r31                        
  3b60:  05 90        lpm r0, Z+                     
  3b62:  f4 91        lpm r31, Z                     
  3b64:  e0 2d        mov r30, r0                    
  3b66:  09 94        ijmp                           

; ===== malloc =====
malloc:
  3b68:  0f 93        push r16                       
  3b6a:  1f 93        push r17                       
  3b6c:  cf 93        push r28                       
  3b6e:  df 93        push r29                       
  3b70:  82 30        cpi r24, 0x02                  
  3b72:  91 05        cpc r25, r1                    
  3b74:  10 f4        brcc L_3b7a                    ; -> 0x3b7a
  3b76:  82 e0        ldi r24, 0x02                  
  3b78:  90 e0        ldi r25, 0x00                  ; r25:r24 = 0x0002 (2)
L_3b7a:
  3b7a:  e0 91 3d 04  lds r30, 0x043d                ; v_043d
  3b7e:  f0 91 3e 04  lds r31, 0x043e                ; v_043e
  3b82:  30 e0        ldi r19, 0x00                  
  3b84:  20 e0        ldi r18, 0x00                  ; r19:r18 = 0x0000 (0)
  3b86:  b0 e0        ldi r27, 0x00                  
  3b88:  a0 e0        ldi r26, 0x00                  ; r27:r26 = 0x0000 (0)
L_3b8a:
  3b8a:  30 97        sbiw r31:r30, 0                
  3b8c:  99 f4        brne L_3bb4                    ; -> 0x3bb4
  3b8e:  21 15        cp r18, r1                     
  3b90:  31 05        cpc r19, r1                    
  3b92:  09 f4        brne L_3b96                    ; -> 0x3b96
  3b94:  4a c0        rjmp L_3c2a                    ; -> 0x3c2a
L_3b96:
  3b96:  28 1b        sub r18, r24                   
  3b98:  39 0b        sbc r19, r25                   
  3b9a:  24 30        cpi r18, 0x04                  
  3b9c:  31 05        cpc r19, r1                    
  3b9e:  d8 f5        brcc L_3c16                    ; -> 0x3c16
  3ba0:  8a 81        ldd r24, Y+2                   
  3ba2:  9b 81        ldd r25, Y+3                   
  3ba4:  61 15        cp r22, r1                     
  3ba6:  71 05        cpc r23, r1                    
  3ba8:  89 f1        breq L_3c0c                    ; -> 0x3c0c
  3baa:  fb 01        movw r31:r30, r23:r22          
  3bac:  93 83        std Z+3, r25                   
  3bae:  82 83        std Z+2, r24                   
L_3bb0:
  3bb0:  fe 01        movw r31:r30, r29:r28          
  3bb2:  11 c0        rjmp L_3bd6                    ; -> 0x3bd6
L_3bb4:
  3bb4:  40 81        ld r20, Z                      
  3bb6:  51 81        ldd r21, Z+1                   
  3bb8:  02 81        ldd r16, Z+2                   
  3bba:  13 81        ldd r17, Z+3                   
  3bbc:  48 17        cp r20, r24                    
  3bbe:  59 07        cpc r21, r25                   
  3bc0:  e0 f0        brcs L_3bfa                    ; -> 0x3bfa
  3bc2:  48 17        cp r20, r24                    
  3bc4:  59 07        cpc r21, r25                   
  3bc6:  99 f4        brne L_3bee                    ; -> 0x3bee
  3bc8:  10 97        sbiw r27:r26, 0                
  3bca:  61 f0        breq L_3be4                    ; -> 0x3be4
  3bcc:  12 96        adiw r27:r26, 2                
  3bce:  0c 93        st X, r16                      
  3bd0:  12 97        sbiw r27:r26, 2                
  3bd2:  13 96        adiw r27:r26, 3                
  3bd4:  1c 93        st X, r17                      
L_3bd6:
  3bd6:  32 96        adiw r31:r30, 2                
L_3bd8:
  3bd8:  cf 01        movw r25:r24, r31:r30          
  3bda:  df 91        pop r29                        
  3bdc:  cf 91        pop r28                        
  3bde:  1f 91        pop r17                        
  3be0:  0f 91        pop r16                        
  3be2:  08 95        ret                            
L_3be4:
  3be4:  00 93 3d 04  sts 0x043d, r16                ; v_043d
  3be8:  10 93 3e 04  sts 0x043e, r17                ; v_043e
  3bec:  f4 cf        rjmp L_3bd6                    ; -> 0x3bd6
L_3bee:
  3bee:  21 15        cp r18, r1                     
  3bf0:  31 05        cpc r19, r1                    
  3bf2:  51 f0        breq L_3c08                    ; -> 0x3c08
  3bf4:  42 17        cp r20, r18                    
  3bf6:  53 07        cpc r21, r19                   
  3bf8:  38 f0        brcs L_3c08                    ; -> 0x3c08
L_3bfa:
  3bfa:  a9 01        movw r21:r20, r19:r18          
  3bfc:  db 01        movw r27:r26, r23:r22          
L_3bfe:
  3bfe:  9a 01        movw r19:r18, r21:r20          
  3c00:  bd 01        movw r23:r22, r27:r26          
  3c02:  df 01        movw r27:r26, r31:r30          
  3c04:  f8 01        movw r31:r30, r17:r16          
  3c06:  c1 cf        rjmp L_3b8a                    ; -> 0x3b8a
L_3c08:
  3c08:  ef 01        movw r29:r28, r31:r30          
  3c0a:  f9 cf        rjmp L_3bfe                    ; -> 0x3bfe
L_3c0c:
  3c0c:  90 93 3e 04  sts 0x043e, r25                ; v_043e
  3c10:  80 93 3d 04  sts 0x043d, r24                ; v_043d
  3c14:  cd cf        rjmp L_3bb0                    ; -> 0x3bb0
L_3c16:
  3c16:  fe 01        movw r31:r30, r29:r28          
  3c18:  e2 0f        add r30, r18                   
  3c1a:  f3 1f        adc r31, r19                   
  3c1c:  81 93        st Z+, r24                     
  3c1e:  91 93        st Z+, r25                     
  3c20:  22 50        subi r18, 0x02                 
  3c22:  31 09        sbc r19, r1                    
  3c24:  39 83        std Y+1, r19                   
  3c26:  28 83        st Y, r18                      
  3c28:  d7 cf        rjmp L_3bd8                    ; -> 0x3bd8
L_3c2a:
  3c2a:  20 91 3b 04  lds r18, 0x043b                ; v_043b
  3c2e:  30 91 3c 04  lds r19, 0x043c                ; v_043c
  3c32:  23 2b        or r18, r19                    
  3c34:  41 f4        brne L_3c46                    ; -> 0x3c46
  3c36:  20 91 04 01  lds r18, 0x0104                ; v_0104
  3c3a:  30 91 05 01  lds r19, 0x0105                ; v_0105
  3c3e:  30 93 3c 04  sts 0x043c, r19                ; v_043c
  3c42:  20 93 3b 04  sts 0x043b, r18                ; v_043b
L_3c46:
  3c46:  20 91 02 01  lds r18, 0x0102                ; v_0102
  3c4a:  30 91 03 01  lds r19, 0x0103                ; v_0103
  3c4e:  21 15        cp r18, r1                     
  3c50:  31 05        cpc r19, r1                    
  3c52:  41 f4        brne L_3c64                    ; -> 0x3c64
  3c54:  2d b7        in r18, 0x3d                   ; SPL
  3c56:  3e b7        in r19, 0x3e                   ; SPH
  3c58:  40 91 06 01  lds r20, 0x0106                ; v_0106
  3c5c:  50 91 07 01  lds r21, 0x0107                ; v_0107
  3c60:  24 1b        sub r18, r20                   
  3c62:  35 0b        sbc r19, r21                   
L_3c64:
  3c64:  e0 91 3b 04  lds r30, 0x043b                ; v_043b
  3c68:  f0 91 3c 04  lds r31, 0x043c                ; v_043c
  3c6c:  e2 17        cp r30, r18                    
  3c6e:  f3 07        cpc r31, r19                   
  3c70:  a0 f4        brcc L_3c9a                    ; -> 0x3c9a
  3c72:  2e 1b        sub r18, r30                   
  3c74:  3f 0b        sbc r19, r31                   
  3c76:  28 17        cp r18, r24                    
  3c78:  39 07        cpc r19, r25                   
  3c7a:  78 f0        brcs L_3c9a                    ; -> 0x3c9a
  3c7c:  ac 01        movw r21:r20, r25:r24          
  3c7e:  4e 5f        subi r20, 0xfe                 
  3c80:  5f 4f        sbci r21, 0xff                 
  3c82:  24 17        cp r18, r20                    
  3c84:  35 07        cpc r19, r21                   
  3c86:  48 f0        brcs L_3c9a                    ; -> 0x3c9a
  3c88:  4e 0f        add r20, r30                   
  3c8a:  5f 1f        adc r21, r31                   
  3c8c:  50 93 3c 04  sts 0x043c, r21                ; v_043c
  3c90:  40 93 3b 04  sts 0x043b, r20                ; v_043b
  3c94:  81 93        st Z+, r24                     
  3c96:  91 93        st Z+, r25                     
  3c98:  9f cf        rjmp L_3bd8                    ; -> 0x3bd8
L_3c9a:
  3c9a:  f0 e0        ldi r31, 0x00                  
  3c9c:  e0 e0        ldi r30, 0x00                  ; r31:r30 = 0x0000 (0)
  3c9e:  9c cf        rjmp L_3bd8                    ; -> 0x3bd8

; ===== F_3ca0 =====
F_3ca0:
  3ca0:  cf 93        push r28                       
  3ca2:  df 93        push r29                       
  3ca4:  00 97        sbiw r25:r24, 0                
  3ca6:  e9 f0        breq L_3ce2                    ; -> 0x3ce2
  3ca8:  fc 01        movw r31:r30, r25:r24          
  3caa:  32 97        sbiw r31:r30, 2                
  3cac:  13 82        std Z+3, r1                    
  3cae:  12 82        std Z+2, r1                    
  3cb0:  a0 91 3d 04  lds r26, 0x043d                ; v_043d
  3cb4:  b0 91 3e 04  lds r27, 0x043e                ; v_043e
  3cb8:  ed 01        movw r29:r28, r27:r26          
  3cba:  30 e0        ldi r19, 0x00                  
  3cbc:  20 e0        ldi r18, 0x00                  ; r19:r18 = 0x0000 (0)
  3cbe:  10 97        sbiw r27:r26, 0                
  3cc0:  a1 f4        brne L_3cea                    ; -> 0x3cea
  3cc2:  20 81        ld r18, Z                      
  3cc4:  31 81        ldd r19, Z+1                   
  3cc6:  82 0f        add r24, r18                   
  3cc8:  93 1f        adc r25, r19                   
  3cca:  20 91 3b 04  lds r18, 0x043b                ; v_043b
  3cce:  30 91 3c 04  lds r19, 0x043c                ; v_043c
  3cd2:  28 17        cp r18, r24                    
  3cd4:  39 07        cpc r19, r25                   
  3cd6:  09 f0        breq L_3cda                    ; -> 0x3cda
  3cd8:  61 c0        rjmp L_3d9c                    ; -> 0x3d9c
L_3cda:
  3cda:  f0 93 3c 04  sts 0x043c, r31                ; v_043c
  3cde:  e0 93 3b 04  sts 0x043b, r30                ; v_043b
L_3ce2:
  3ce2:  df 91        pop r29                        
  3ce4:  cf 91        pop r28                        
  3ce6:  08 95        ret                            
L_3ce8:
  3ce8:  ea 01        movw r29:r28, r21:r20          
L_3cea:
  3cea:  ce 17        cp r28, r30                    
  3cec:  df 07        cpc r29, r31                   
  3cee:  e8 f5        brcc L_3d6a                    ; -> 0x3d6a
  3cf0:  4a 81        ldd r20, Y+2                   
  3cf2:  5b 81        ldd r21, Y+3                   
  3cf4:  9e 01        movw r19:r18, r29:r28          
  3cf6:  41 15        cp r20, r1                     
  3cf8:  51 05        cpc r21, r1                    
  3cfa:  b1 f7        brne L_3ce8                    ; -> 0x3ce8
L_3cfc:
  3cfc:  e9 01        movw r29:r28, r19:r18          
  3cfe:  fb 83        std Y+3, r31                   
  3d00:  ea 83        std Y+2, r30                   
  3d02:  49 91        ld r20, Y+                     
  3d04:  59 91        ld r21, Y+                     
  3d06:  c4 0f        add r28, r20                   
  3d08:  d5 1f        adc r29, r21                   
  3d0a:  ec 17        cp r30, r28                    
  3d0c:  fd 07        cpc r31, r29                   
  3d0e:  61 f4        brne L_3d28                    ; -> 0x3d28
  3d10:  80 81        ld r24, Z                      
  3d12:  91 81        ldd r25, Z+1                   
  3d14:  02 96        adiw r25:r24, 2                
  3d16:  84 0f        add r24, r20                   
  3d18:  95 1f        adc r25, r21                   
  3d1a:  e9 01        movw r29:r28, r19:r18          
  3d1c:  99 83        std Y+1, r25                   
  3d1e:  88 83        st Y, r24                      
  3d20:  82 81        ldd r24, Z+2                   
  3d22:  93 81        ldd r25, Z+3                   
  3d24:  9b 83        std Y+3, r25                   
  3d26:  8a 83        std Y+2, r24                   
L_3d28:
  3d28:  f0 e0        ldi r31, 0x00                  
  3d2a:  e0 e0        ldi r30, 0x00                  ; r31:r30 = 0x0000 (0)
L_3d2c:
  3d2c:  12 96        adiw r27:r26, 2                
  3d2e:  8d 91        ld r24, X+                     
  3d30:  9c 91        ld r25, X                      
  3d32:  13 97        sbiw r27:r26, 3                
  3d34:  00 97        sbiw r25:r24, 0                
  3d36:  b9 f5        brne L_3da6                    ; -> 0x3da6
  3d38:  2d 91        ld r18, X+                     
  3d3a:  3c 91        ld r19, X                      
  3d3c:  11 97        sbiw r27:r26, 1                
  3d3e:  cd 01        movw r25:r24, r27:r26          
  3d40:  02 96        adiw r25:r24, 2                
  3d42:  82 0f        add r24, r18                   
  3d44:  93 1f        adc r25, r19                   
  3d46:  20 91 3b 04  lds r18, 0x043b                ; v_043b
  3d4a:  30 91 3c 04  lds r19, 0x043c                ; v_043c
  3d4e:  28 17        cp r18, r24                    
  3d50:  39 07        cpc r19, r25                   
  3d52:  39 f6        brne L_3ce2                    ; -> 0x3ce2
  3d54:  30 97        sbiw r31:r30, 0                
  3d56:  51 f5        brne L_3dac                    ; -> 0x3dac
  3d58:  10 92 3e 04  sts 0x043e, r1                 ; v_043e
  3d5c:  10 92 3d 04  sts 0x043d, r1                 ; v_043d
L_3d60:
  3d60:  b0 93 3c 04  sts 0x043c, r27                ; v_043c
  3d64:  a0 93 3b 04  sts 0x043b, r26                ; v_043b
  3d68:  bc cf        rjmp L_3ce2                    ; -> 0x3ce2
L_3d6a:
  3d6a:  d3 83        std Z+3, r29                   
  3d6c:  c2 83        std Z+2, r28                   
  3d6e:  40 81        ld r20, Z                      
  3d70:  51 81        ldd r21, Z+1                   
  3d72:  84 0f        add r24, r20                   
  3d74:  95 1f        adc r25, r21                   
  3d76:  c8 17        cp r28, r24                    
  3d78:  d9 07        cpc r29, r25                   
  3d7a:  61 f4        brne L_3d94                    ; -> 0x3d94
  3d7c:  4e 5f        subi r20, 0xfe                 
  3d7e:  5f 4f        sbci r21, 0xff                 
  3d80:  88 81        ld r24, Y                      
  3d82:  99 81        ldd r25, Y+1                   
  3d84:  48 0f        add r20, r24                   
  3d86:  59 1f        adc r21, r25                   
  3d88:  51 83        std Z+1, r21                   
  3d8a:  40 83        st Z, r20                      
  3d8c:  8a 81        ldd r24, Y+2                   
  3d8e:  9b 81        ldd r25, Y+3                   
  3d90:  93 83        std Z+3, r25                   
  3d92:  82 83        std Z+2, r24                   
L_3d94:
  3d94:  21 15        cp r18, r1                     
  3d96:  31 05        cpc r19, r1                    
  3d98:  09 f0        breq L_3d9c                    ; -> 0x3d9c
  3d9a:  b0 cf        rjmp L_3cfc                    ; -> 0x3cfc
L_3d9c:
  3d9c:  f0 93 3e 04  sts 0x043e, r31                ; v_043e
  3da0:  e0 93 3d 04  sts 0x043d, r30                ; v_043d
  3da4:  9e cf        rjmp L_3ce2                    ; -> 0x3ce2
L_3da6:
  3da6:  fd 01        movw r31:r30, r27:r26          
  3da8:  dc 01        movw r27:r26, r25:r24          
  3daa:  c0 cf        rjmp L_3d2c                    ; -> 0x3d2c
L_3dac:
  3dac:  13 82        std Z+3, r1                    
  3dae:  12 82        std Z+2, r1                    
  3db0:  d7 cf        rjmp L_3d60                    ; -> 0x3d60
L_3db2:
  3db2:  10 e0        ldi r17, 0x00                  
  3db4:  cd e6        ldi r28, 0x6d                  
  3db6:  d0 e0        ldi r29, 0x00                  ; r29:r28 = 0x006d (109)
  3db8:  04 c0        rjmp L_3dc2                    ; -> 0x3dc2
L_3dba:
  3dba:  fe 01        movw r31:r30, r29:r28          
  3dbc:  0e 94 ae 1d  call ctor_call                 ; -> 0x3b5c
  3dc0:  21 96        adiw r29:r28, 1                
L_3dc2:
  3dc2:  ce 36        cpi r28, 0x6e                  
  3dc4:  d1 07        cpc r29, r17                   
  3dc6:  c9 f7        brne L_3dba                    ; -> 0x3dba
  3dc8:  f8 94        cli                            
L_3dca:
  3dca:  ff cf        rjmp L_3dca                    ; -> 0x3dca
