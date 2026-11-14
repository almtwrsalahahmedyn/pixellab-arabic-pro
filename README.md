# 🎨 PixelLab V8 TG Pro Arabic Studio

مشروع متكامل ومفتوح لتطبيق **PixelLab (النسخة الاحترافية V8 TG)** مع ميزات موازنة وتسوية الأسطر والكشيدة بالمليمتر (**Madd Pro**)، واستوديو التصدير الاحترافي للطبقات المتعددة (**Layered PSD / SVG / Vector XML / Android Layout XML**).

---

## 🌟 الميزات الحصرية المضافة (New Custom Features)

### 1. تسوية وموازنة الأسطر والمد بالمليمتر (Madd Pro):
- **ميزان أطول سطر بالملي:** حساب أبعاد النص بدقة متناهية عبر قياس أحجام البكسل لكل حرف وكلمة وتوزيع الكشيدة والمد العربي بدقة لتتساوى بدايات ونهايات الأسطر دون أي تشويه للأبعاد أو المسافات.
- **لوحة تحكم تفاعلية (Dynamic Justify Studio):** تظهر في تبويب النصوص بالأسفل بأيقونة "تسوية الأسطر".
- **سلايدر التحكم الدقيق (Precision Slider):** لتكبير وتصغير المد بالنسبة المئوية لحظياً.
- **التحكم بالكلمات الفردية (Word-by-word Madd Chips):** إمكانية مد أو تقليص كل كلمة على حدة.
- **ملف الكود المصدري:** `custom_src/com/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer.java`

### 2. استوديو التصدير الاحترافي (Professional Export Studio):
- **Adobe Photoshop Layered (`.psd`):** تصدير تصميم حقيقي متعدد الطبقات متوافق مع Photoshop و Photopea و Figma (نصوص حية، صور، أشكال هندسية، وخلفية) بدقة كاملة وقنوات شفافية Alpha.
- **فيكتور متجهات (`.svg`):** تصدير فيكتور نقي مع دعم النصوص العربية واتجاه RTL والأشكال الهندسية.
- **أندرويد فيكتور دراوابل (`Vector Drawable .xml`):** كود `<vector>` جاهز لوضعه مباشرة في `res/drawable/`.
- **واجهة أندرويد ستوديو (`Android UI Layout .xml`):** تخطيط `RelativeLayout` متكامل لعناصر التصميم.
- **ملف الكود المصدري:** `custom_src/com/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio.java`

---

## 📁 هيكل المشروع (Project Structure)

```text
├── AndroidManifest.xml          # مانيفيست التطبيق وصلاحياته
├── apktool.yml                  # إعدادات حزم وبناء Apktool
├── assets/                      # الخطوط (Fonts)، الملصقات، الأشكال، والقوالب
├── lib/                         # المكتبات الأصلية الثنائية (Native .so Libraries)
├── res/                         # موارد التطبيق (Drawables, Colors, Layouts, Values)
├── resources.arsc               # جدول الموارد الثنائية المترجمة
├── smali/                       # كود البايت كود Smali الكامل لجميع كلاسات التطبيق
├── custom_src/                  # الأكواد المصدرية النظيفة بلغة Java
│   └── com/tawfiq/imaginstudio/imagetools/pixellab/
│       ├── ArabicTextEnhancer.java    # كود تسوية الأسطر والمد
│       ├── ProjectExportStudio.java   # كود استوديو تصدير PSD و SVG و XML
│       └── PsdProjectImporter.java    # كود استيراد وقراءة PSD
├── keystore/
│   └── release.jks              # مفتاح التوقيع الرسمي للإصدار
├── build.sh                     # سكربت البناء والمحاذاة والتوقيع التلقائي
└── README.md
```

---

## 🛠 طريقة البناء (How to Build)

### المتطلبات الأساسية:
- Java JDK 11 أو أحدث
- Apktool (v2.9.0 أو أحدث)
- `zipalign` و `apksigner` (من Android SDK Build-Tools)

### أمر البناء بنقرة واحدة:
```bash
chmod +x build.sh
./build.sh
```

ينتج ملف الـ APK النهائي الموقع والمحاذى في المجلد:
`build/PixelLab_V8_TG_Pro_Arabic_PSD.apk`

---

## 🔐 الترخيص وحقوق المشروع
هذا المستودع مخصص لأغراض التطوير والتعديل المخصص.
جميع الحقوق محفوظة للمطورين.
