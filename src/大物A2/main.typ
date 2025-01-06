#import "template.typ": *

#show: project.with(
  title: "大物笔记",
  authors: (
    "无34 gx",
  ),
  date: "October 31, 2024",
)
#let dbar = math.class("unary", [#math.dif#h(-0.57em)#box(math.macron(hide([x])), baseline: 0.5pt, outset: 0pt)])
= 热学
== 基础
- *平衡态*：热力学系统内部没有宏观的粒子和能量流动状态，系统各种宏观性质不随时间变化.
 - 应满足平衡条件：系统与外界达成*力学平衡*、*热平衡*、*相平衡*，内部达成*化学平衡*.

- 热力学系统的分类：#v(-0.8em) #table(columns: 4, align: center, 
[类型], [功交换], [热交换], [粒子交换],
[孤立系统],[#sym.crossmark],[#sym.crossmark],[#sym.crossmark],
[绝热系统],[#sym.checkmark],[#sym.crossmark],[#sym.crossmark],
[封闭系统],[#sym.checkmark],[#sym.checkmark],[#sym.crossmark],
[开放系统],[#sym.checkmark],[#sym.checkmark],[#sym.checkmark])
- 物态参量（态参量）: 描述*平衡态*的宏观物理量, 如 $p, V, T, S$ 等.
- *理想气体物态方程*$ p V=nu R T=m/M R T=>p=n k T $
 - $M$: 摩尔质量，$n$: 单位体积内粒子数，$k$: 玻尔兹曼常量.
- *准静态过程*：系统的每一状态都无限接近于平衡态的过程，即准静态过程是由一系列平衡态组成的过程.
 - 条件：$Delta t_"process">>$ 弛豫时间 $tau$.
== 微观层面——气体动理论
- *理想气体压强公式*：$p=1/3 n m overline(v^2)=2/3 n macron(epsilon)_t$.
 - 由此可知（单原子分子）平均动能 $macron(epsilon)_t=3/2 k T$, 均方根速率  $sqrt(overline(v^2))=sqrt((3k T)/m)=sqrt((3R T)/M)$.
- *能量均分定理*
 - 分子自由度（不考虑分子振动） #v(-0.8em) #table(columns: (auto, auto, 7em, auto), align: center, 
 [原子数], [平动自由度 $v$], [转动自由度 $r$], [总自由度 $i$],
 [单], [3], [0], [*3*],
 [双], [3], [2], [*5*], 
 [多], [3], [3], [*6*])
 - 能量均分定理：每个自由度所对应的平均动能都等于 $1/2k T$.
 - 即 *刚性分子平均动能* $macron(epsilon)_t=i/2 k T$，*刚性分子理想气体内能* $E=N macron(epsilon)_t=N i/2 k T=i/2 nu R T$.
- *麦克斯韦速度分布律*
 - 麦克斯韦速率分布函数 $ (dif N_v)/N= f(v)=4pi v^2 (m/(2pi k T))^(3/2) e^(-(m v^2)/(2k T)) $
  - 最概然速率 $v_p=sqrt((2k T)/m)$, 平均速率 $macron(v)=sqrt((8k T)/(pi m))$, 均方根速率 $v_"rms"=sqrt((3k T)/m)$, $v_p:macron(v):v_"rms"=sqrt(2):sqrt(8/pi):sqrt(3)$.
  - 讨论速率分布使用 $v_p$, 计算分子平均动能使用 $v_"rms"$, 讨论分子碰撞使用 $macron(v)$.
   - 分子碰壁数 $Gamma=1/4 n macron(v)$
 - 理想气体速度分函数（正态分布） $ g(v)=(m/(2pi k T))^(1/2)e^(-(m v^2)/(2k T)),\ F(arrow(v))=g(v_x) dot g(v_y) dot g(v_z)=(m/(2pi k T))^(3/2)e^(-(m arrow(v)^2)/(2k T)) $
- \**玻尔兹曼分布* \
  设系统处于外势场中，每个分子的势能为 $epsilon_p=epsilon_p (arrow(r))$,则处于空间体积元 $dif^3 arrow(r)=dif x dif y dif z$ 内的分子数为：
  $ dif N_arrow(r)=n_0e^(-(epsilon_p (r))/(k T))dot dif^3arrow(r). $
  结合麦克斯韦分布律，有麦克斯韦—玻尔兹曼分布律：$ dif N=n_0(m/(2pi k T))^(3/2)e^(-epsilon/(k T))dot dif^3arrow(r) dot dif^3arrow(v), $
  其中 $epsilon=epsilon_k+epsilon_p$ 为分子总能量.
- *分子平均自由程*
 - 平均碰撞频率 $macron(z)=sigma macron(u) dot n=pi d^2n macron(u)$, 其中碰撞截面 $sigma=pi d^2$, 平均相对速度 $macron(u)=sqrt(2) macron(v)$.
 - 平均自由程 $macron(lambda)=macron(v)/macron(z)=1/(sqrt(2)pi d^2n)$. \
  注意：实际平均自由程受容器线度 $l$ 的限制，故 $macron(lambda)=min(l, 1/(sqrt(2)pi d^2n))$
== 实际气体与非平衡态输运过程
- *范德瓦耳斯方程*：对单位mol的范氏气体：#h(100%) $ (p+a/V_m^2)(V_m-b)=nu R T, $
  其中 $b$ 是与分子体积有关的修正量, $a$ 是与分子间引力作用有关的修正量.
- 范氏气体内能: $E_k=i/2 nu R T$, $E_p=integral_V^infinity-p_"in"dif V=-nu^2dot a/V$.
- \**输运过程*：非平衡态下，热力学系统各部分性质不均匀, 导致 $epsilon,p,m$ 的迁移. #v(-0.8em) #table(columns: 3, align: center,
  [热传导], [温度 $T$ 不均匀 → 能量 $macron(epsilon)_"q"$ 的迁移], [热导率 $kappa=1/3 rho macron(v) macron(lambda) c_V$],
  [内摩擦], [定向速度 $u$ 不均匀 → 定向动量 $p$ 的迁移], [黏度 $eta=1/3 rho macron(v) macron(lambda)$],
  [扩散], [密度 $rho$ 不均匀 → 质量 $m$ 的迁移], [扩散系数 $D=1/3 macron(v) macron(lambda)$])
   #v(-0.5em) 注意 $kappa$ 式中 $c_V=C_V/(N m)$ 为定体比热.
== 热力学第一定律
- 体积功 $dif A=p dif V$, $A=integral_(V_1)^V_2 p dif V$.
- *热力学第一定律*：$Q=Delta E+A$, $dbar Q = dif E + dbar A$.
- *摩尔热容量*：1mol 物质温度升高1度所吸热量, 与过程有关.
 - $Delta E=nu C_(V,m)Delta T$, #h(1em) $C_(p,m)-C_(V,m)=R$ (迈耶公式).
 - $C_(V,m) = i/2R, C_(p,m) = (i+2)/2R$, *比热比* $gamma = C_(p,m)/C_(v,m) = (i+2)/i$
- 绝热过程方程：$p V^gamma=C$.
- 多方过程：$p V^n=C$, $n$ 为多方指数, 过程满足 $A=(p_1V_1-p_2V_2)/(n-1), C_m=C_(V,m)-1/(n-1)R$.
- *热机*
 - 热循环：$p-V$ 图上顺时针，吸热 > 放热，对外做功\
   设吸收总热量为 $Q_1$, 放出总热量为 $abs(Q_2)$, 定义热循环效率 $eta = 1-abs(Q_2)/Q_1$.
 - 致冷循环：$p-V$ 图上顺时针，吸热 > 放热，对外做功\
   设放出总热量为 $abs(Q_1)$, 吸收总热量为 $Q_2$, 定义致冷系数 $w = Q_2/(abs(Q_1)-Q_2)$（可以大于1！）.
 - 卡诺循环：工质只和两个恒温热源交换热量的无摩擦的准静态循环.\
    （热机循环过程：$T_1$ 等温膨胀 #sym.arrow 绝热膨胀 #sym.arrow $T_2$ 等温压缩 #sym.arrow 绝热压缩）\
    卡诺热机 $eta_c=1-T_2/T_1$, 同理对卡诺制冷机有 $w_c=T_2/(T_1-T_2)$
   
== 热力学第二定律
- *克劳修斯熵公式*：对*可逆*元过程, $dif S = (dbar Q) / T, Delta S=integral (dbar Q)/ T $.（不可逆则为 > 号）
 - 结合热一律，进一步可得 $T dif S=dif E+dbar A=dif E+p dif V$.
 - 可逆绝热过程 $dif S=0$. 等温：$Delta S=Q/T$, 等体：$Delta S=c m integral_(T_1)^(T_2) (dif T)/T$.
- *理想气体熵公式*：对1mol理想气体, $S_m=C_(V,m)ln T/T_0+R ln V/V_0+S_0$.
- 熵增加原理：热力学系统经绝热过程熵不会减少，可逆绝热过程熵不变，不可逆过程熵增加.\
  绝热系统或孤立系统由非平衡态向平衡态过渡时熵增加，最终的平衡态是熵最大的状态.
- *玻尔兹曼熵公式*：$S=k ln Omega$.（对于非平衡态也适用）
- $T-S$ 图：可方便表示热量, $Q=integral T dif S$.

= 波动光学
== 光的干涉
- 光强 $I prop A^2$.
- *条纹衬比度* $V=(I_"max" - I_"min")/(I_"max" + I_"min")=(2A_1A_2)/(A_1^2+A_2^2)$
- 双缝干涉*波程差* $delta approx d sin theta approx d x/L$, \
  相长条件 $delta = k lambda$, 相消条件 $delta = (k+1/2) lambda$, \
  条纹间距 $Delta x$ 满足 $lambda L = d Delta x$.
- *半波损失*：光从光疏介质射向光密介质，反射时相位发生 $pi$ 的偏移，即波程差加上或减去 $lambda / 2$.
- 时间相干性：设谱线宽度 $Delta x$： \
  最大相干级次 $k_M=lambda/(Delta lambda)$, 相干长度 $delta_M=k_M lambda = lambda^2/(Delta lambda)$, 相干时间 $tau=delta_M/c$.
- 薄膜干涉 条纹间距 $L=lambda/(2n theta)$.
- 牛顿环第 $k$ 个暗环半径 $r_k$ 满足 $r^2_k=k R lambda$.
- 等倾干涉：$delta=2n e cos r$
== 光的衍射
- *单缝夫琅禾费衍射*：光源和屏幕均处于无限远，可用透镜模拟
 - *半波带法*
  - 衍射角 $theta=0$ 时, $delta=0$, 形成中央明纹;
  - $a sin theta = k/2 lambda space (k>=2)$ 时，将缝分为 $k$ 个半波带：
   - $k$ 为偶数：$k$ 个半波带相消，形成暗纹中心;
   - $k$ 为奇数：$k-1$ 个半波带相消，剩余1个半波带形成近似的明纹中心.
  - 得到主极大 $theta = 0$, 次极小 $sin theta = (k lambda) / a$, 近似次极大 $sin theta = (k+1/2) lambda/a$.
  - 中央明纹宽度 $d approx (2k lambda)/a$.
 - 相量法得到光强公式 $I=I_0((sin alpha)/alpha)^2, alpha=(pi a sin theta)/lambda$.
- *圆孔夫琅禾费衍射*：第一次极小 $sin theta = 1.22 lambda / D$.
- *瑞利判据*：对两个等光强的非相干物点，如果它们的一个主极大中心恰与另一个主极大边缘（第一暗纹处）重合，则两物点刚可分辨.
 - 最小分辨角 $delta theta$ 为第一暗纹位置，定义分辨率 $R=1/(delta theta)=D/(1.22lambda)$.
- *光栅衍射*
 - 透光部分宽度 $a$, 不透光部分宽度 $b$, 光栅常数$d=a+b$.
 - 由相量法得到 $I=I_0 ((sin N beta)/(sin beta))^2, beta = (pi d sin theta)/lambda$, 考虑衍射，得到 $I=I_0 ((sin alpha)/alpha)^2((sin N beta)/(sin beta))^2$.
  - 主极大 $sin theta = k lambda/d$, 次极小 $sin theta = (k + k'/N) lambda/d$.
  - 主极大间距 $k/d$, 次极小间距 $1/N k/d$.
  - 两个主极大之间有 $N-1$ 个次极小，$N-2$ 个次极大（不关心）.
 - 斜入射方程：$d(sin theta - sin i)= k lambda$.
- *X射线衍射*
 - 布拉格公式 $2d dot sin phi = k lambda$, 其中 $phi$ 为掠射角.

= 量子力学
== 光的偏振
== 这是什么
== 我操真牛逼