# GyroSwing

## 陀螺仪摇摆台测试

### 测试目的

弄清楚产品IMU陀螺仪的动态性能。

### 测试方法

产品三个轴分别进行摇摆测试。记录下，摇摆前静止两分钟，然后开始摇摆（角度：20°，频率：0.25Hz）两分钟，最后摇摆结束再静止两分钟的数据。通过MATLAB进行数据分析。

### 测试结果

图1：陀螺仪X轴数据积分得到的角度 <br>

![](https://github.com/XinLiGitHub/GyroSwing/raw/master/Software/X轴.bmp) <br>

图2：陀螺仪Y轴数据积分得到的角度 <br>

![](https://github.com/XinLiGitHub/GyroSwing/raw/master/Software/Y轴.bmp) <br>

图3：陀螺仪Z轴数据积分得到的角度 <br>

![](https://github.com/XinLiGitHub/GyroSwing/raw/master/Software/Z轴.bmp) <br>

### 测试结论

摇摆过程中，陀螺仪X、Y轴激发出了0.1deg/s的漂移（可能是零偏或比例因子正反转不一样），Z轴没有激发明显的漂移。陀螺仪三个轴的比例因子标定的还不错，在千分之一以内。陀螺仪Z轴要比X、Y轴性能要好不少。
