
REM   問題     4人の兄弟(A,B,C,D)がいます。今日彼らはそれぞれ異なった数の魚を釣りあげました。(1匹から4匹）
REM   A「Bが釣り上げた魚は1匹ではありません。」
REM   B「Cが釣り上げた魚は1匹ではありません。」
REM  どちらの発言も釣った魚が自分より少ないなら真実、多いなら嘘です。それぞれ何匹釣ったのでしょうか。
REM  解答      A:4匹、B:3匹、C:2匹、D:1匹(十進BASICを使っています。)(!以降は注釈文、&は行継続)
FOR  A=1  TO  4    !Aが釣った魚の数
   FOR  B=1  TO 4  !Bが釣った魚の数
      FOR  C=1  TO 4  !Cが釣った魚の数
         FOR   D=1  TO 4  !Dが釣った魚の数
          
            IF (A<>B AND  A<>C  AND  A<>D  AND  B<>C  AND  B<>D AND  C<>D ) AND  &  !4人が釣った数はそれぞれ違う
&            (( A>B   AND  B<>1)    OR  (A<B  AND  B=1))    AND    &  !Aの発言                           
&             ((B>C   AND  C<>1)     OR  (B<C  AND C=1))   &      !Bの発言
&              THEN  PRINT  A;B;C;D     !解を出力      
             
             
             
             
             
             
         NEXT D
      NEXT C
   NEXT B
NEXT A

END

