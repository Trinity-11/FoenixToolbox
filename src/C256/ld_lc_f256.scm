(define memories
  '((memory flash (address (#x040000 . #x07ffff))
  			(type rom))
    (memory DirectPage (address (#x00c000 . #x00c0ff))
            (section (registers ztiny)))
    (memory LoRAM (address (#x00c100 . #x00efff))
            (section stack data zdata data heap))
    (memory NearRAM1 (address (#x010000 . #x017fff))
            (section znear near))
    (memory NearRAM2 (address (#x018000 . #x01ffff))
            (section cnear))
    (memory FarRAM1 (address (#x020000 . #x02ffff))
            (section far huge))
    (memory FarRAM2 (address (#x030000 . #x03ffff))
            (section zfar zhuge ))
    (memory LoCODE (address (#x00f000 . #x00ffdf))
            (section code cdata (jumptable #x00f000)))
    (memory Vector (address (#x00ffe0 . #x00ffff))
            (section (reset #xfffc)))
    (block stack (size #x1000))
    (block heap (size #x1000))
    (base-address _DirectPageStart DirectPage 0)
    (base-address _NearBaseAddress NearRAM1   0)
))
