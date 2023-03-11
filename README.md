# Droplet_Lammps

    由 "shake_v2_move-delx_rough_45Hz_3.5.0.1" 上 fork 過來

## Log

[Notion: "Log-in.droplet"](https://ntu-cae-david.notion.site/ded56520bba6490fba67bb9b528e3eab?v=24ac3e2495304320955dda35f3c2efa1)

**2023/3/10**
- 修改表面粗糙度：2D sin函數
- 調整基板長度(Z)加長

**2023/3/11**
- 修改液滴耗散力參數：pair_coeff 1 1 mdpd -40 27.5 18 1.0 0.75
- 參考 2012 paper 中 Coefficient for dissipative force參數

**2023/3/12**
- 修改液滴耗散力參數：pair_coeff 1 1 mdpd -40 25 6.0 1.0 0.75
- 參考 *《Self-Cleaning of Hydrophobic Rough Surfaces by Coalescence-Induced Wetting Transition》* (Kaixuan Zhang, 2019)

        
## 超參數設定說明（ChatGPT 待驗證）

* pair_coeff i j mdpd a b r_cut gamma sigma
    * 其中，i和j是粒子類型，a是保守力作用參數，b是耗散力作用參數，r_cut是截斷半徑，gamma是隨機力作用參數，sigma是隨機力強度參數1。
    * 這些參數影響了液滴的形成、表面張力、接觸角等物理性質。一般來說，a越小，液滴越容易聚集；b越大，黏滯度越大；gamma和sigma越大，溫度越高1。
    * 如果我們想要增加液滴的接觸角，可以透過降低pair_coeff中的保守力作用參數a來實現。因為保守力主要是負責分子間的排斥作用，當保守力作用參數a降低時，分子間的排斥力就會變小，分子之間的距離就會更近，進而使得液滴的表面能增加，接觸角也會增大。
    * 參數b代表耗散力的作用強度，通常越大代表粘度越大，粒子運動越受到阻礙。在MDPD模擬中，耗散力會阻止兩個粒子的相對速度超過某個臨界值，使得粒子在運動過程中能夠保持較穩定的速度和方向。因此，參數b的大小會直接影響系統的黏度，進而影響液滴的形成和流動特性。一般來說，b的值會根據系統中粒子的性質和溫度等因素進行調整，以使得模擬結果更貼近實際情況。

* 接觸角主要受到固體表面和液體之間的表面張力以及固體表面和液滴之間的固液相互作用力的影響。因此，要調整液滴的接觸角，需要調整固體表面和液體之間的表面張力和固液相互作用力的參數。

