# Droplet_Lammps

> 由 "shake_v2_move-delx_rough_45Hz_3.5.0.1" 上 fork 過來

* 2023/3/10 修改表面粗糙 、幾何（液滴與表面深度）

    - 更改表面粗糙度(2d sin)
    - 調整基板長度(Z)加長。

* 2023/3/11 修改液滴耗散力參數（黏滯力）

    - pair_coeff  1 1 mdpd  -40 27.5 18 1.0 0.75 
        
        -> 參考 2012 paper中 Coefficient for dissipative force參數