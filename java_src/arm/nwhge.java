package arm;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;

/* loaded from: classes.dex */
public class nwhge extends ContentProvider {
    private final String TAG = nwhge.class.getSimpleName();
    private String Signer = d("ꚩ౭宐ﾾꚩఈ守ﾈꚏ\u0c5b实ﾼꚥ\u0c75官ﾼꚉ్宐ﾻꚩ\u0c5b宔ﾼꚩ\u0c5b宀ﾒꚅొ宛ﾯꚥ౽寡ﾸꚫ౯宠ﾸꚻ\u0c75害ￌꚬ౭宔ﾽꚬ౭宄ﾾꚥ౺客ﾇꚫె宐ﾵꚪ\u0c5b実ﾩꚪ౽守ﾫꚩ\u0c52宽ﾓꚥ౭寡ﾈꚫో守ﾻꚾ౭宀ﾶꚭో它ﾅꚱ౫寤ﾗꚥ౭寥ﾈꚬ౽守ﾻꚾ౭宀ﾷꚭో宇ﾅꚱ౫寤ﾗꚱ౨宔ﾯꚥ౽寡ﾸꚩ\u0c0d宄ﾺꚫౄ宜ﾸꚾ౹宗ﾧꚺ\u0c57宽ﾭꚥ౭客ﾈꚫ౭守ﾻꚾ౭宀ﾴꚭో宛ﾪꚺె宔ﾯꚥ౽寡ﾸꚩ\u0c0d宄ﾺꚩౄ宜ﾸꚾ౹宗ﾧꚺ\u0c57宽ﾭꚥ౾寥ﾧꚬ౨官ￏꚥ౸宄ﾇꚦ౸宔ￌꚥ౸宀ﾈꚧ౪宾ﾧꚬ౨宀ￊꚥ౸宄ﾈꚧ౸宔ￌꚥ౸宀ﾈꚧ౪宾ﾈꚿె宔ﾳꚥ౽宺ﾸꚩ\u0c0d宄ﾺꚪ\u0c54宜ﾼꚍ౫宄ﾇꚬ౨宐ﾳꚪ\u0c5b実ﾩꚪ౽家ﾫꚪ\u0c74実ﾗꚊ\u0c51宔ﾇꚬౖ宐ﾲꚪ\u0c5b実ﾩꚪ౽宲ﾫꚪ\u0c64実ﾗꚊ\u0c51宗ﾗꚥ౭審ﾈꚬ౭守ﾻꚾ౭宀ﾳꚭో宋ﾪꚹ౪宵ﾸꚻ౪宔ﾇꚫె宐ﾵꚪ\u0c5b実ﾩꚪ౽宾ﾫꚩ\u0c50它ﾷꚥ౭審ﾈꚬ౭守ﾻꚾ౭宀ﾻꚭో宋ﾪꚹ౪宵ﾸꚻ౪宔ﾈꚏ\u0c5b宔ﾖꚥ౽寡ﾸꚫ౯宠ﾸꚻ\u0c75害ￌꚬ౭宔ﾽꚩ౭宄ﾾꚩఈ官ﾽꚬో宐ﾈꚏ\u0c5b宔ﾴꚩ\u0c53官ﾽꚩ౭宕ﾮꚀౌ宼ﾵꚯ౯寢ﾚꚦ\u0c72安ﾴꚲ\u0c73宗ﾓꚉ\u0c5e宇ﾊꚄౘ寧ﾞꚙ౨宀ﾪꛜౚ宛ﾺꚱౘ宅ﾋꚘ౾宇ﾎꚙఉ審ﾶꚍ్宜ￊꚜ\u0c50宷ﾩꚁ\u0c51宝ﾳꚹె宣ￇꚒౘ宲ￋꚊౖ宺ﾭꚢఋ宠ﾸꚂై宫ﾥꚃె宕ﾩꚟ\u0c5e宩ﾒꚽ\u0c65实ﾇꛙౚ定ﾹꛐఈ宴ￍꚝ౷守ﾽꚮ౭客ￏꚂ\u0c4f宔ﾹꚧ\u0c72宼ﾉꚭౌ实ﾇꚭఋ宷ﾩꛘ\u0c4e宫ﾎꚍె宓ﾐꚺ౾宵ﾬꛙ్宁ﾻꚩఄ宓ﾫꚂ\u0c72安ￌꛇ\u0c51客ﾍꚭ౮宸ﾗꚊౌ宧\uffc8ꛃఋ宕ﾒꚬౘ宓\uffc9Ꚅ\u0c65寧ﾅꚻ\u0c71寥ﾔꚝఌ宵ￇꚊ౮宦ﾗꛚ౷寡ﾌꚱ\u0c49定ﾐꚍఄ害ﾕꚿౙ宂ﾯꚧ౾宂ﾎꚧై宠ￊꛑ\u0c70宿ﾛꚂ౭宁ﾊꚯ\u0c5b宷ﾩꚯ౮寧ﾕꛚ\u0c73宸ﾾꛜఅ宨ￍꛛ౽容ￌꚐ్害ﾶꚎె寧ￏꚐ౦宛ﾍꚽొ宛ﾖꛛౕ宋ﾗꚸ౯実ￏꛟఓ宦ﾌꛞౌ室ﾛꚾ\u0c71宗ﾌꚞ౨官ﾯꛇ\u0c72宣ﾊꛚఓ寧ﾦꚬ\u0c51宝ﾭꚞౘ守ﾓꚠ\u0c5d它ￔꚀ౷宋ﾚꚮఓ宴ﾘꚸ\u0c73実ﾎꚄఅ宨ﾞꚯఓ宁\uffc8ꚼ౽宫ﾾꛙఈ室ﾜꚥ౻宐\uffc9ꚉౌ寡ﾙꛚ\u0c71宧ￌꛚో宁ﾮꚆ\u0c5b宄ﾹꚩ\u0c5b宜ﾽꚩ౽宖ﾕꚼౖ宓ﾲꚥ౾寡ﾸꚩ\u0c0d宄ﾛꚬ\u0c5b宀ﾨꚪ౾它ﾕꛇౘ容ﾮꛑ\u0c70寥ﾨꚒ\u0c52寥ﾞꚦ\u0c76官ﾻꚅ\u0c0d宷\uffc8Ꚋ౷害ￌꛃె宐ﾍꚪ\u0c5b実ﾩꚠ౮宐ﾺꚢ౸宐ﾖꚏ౽審ﾆꚥ౸官ￏꚥ౸宄ﾇꚦ౸宔ￌꚥ౸宀ﾈꚧ౪宠ﾽꚬె官ﾈꚦ౸宺ﾈꚦ౨宐ￋꚥ౨宲ﾈꚦ౸宐ￊꚿౖ宐ﾱꚪ\u0c5b宺ﾎꚀ\u0c57宸ﾸꛑో寡ﾽꚩ౭寡ﾹꚩ౽实ﾼꚩ౭宔ﾾꚀో宦ﾰꚸఓ宼ﾹౖꚞ寠ￍꚡ౻宜ￋꚃ\u0c65客ﾈꚥ౭寺ﾊꚾ\u0c5b宐ﾋꚆై宓ﾪꚚౄ宠ﾲꚂ\u0c50宺ﾈꚏ\u0c70宠ﾪꚑ\u0c53審ﾝꚭై寣ﾈꚘ\u0c45寺ﾦꚤ౩宂ￌꚢ\u0c52宿ﾝꚐ\u0c5d宆ﾒꚚ౦宵ￔꚑౘ室ﾞꚰ౪寺ﾭꚪ౫客ﾎꚎ\u0c52宝ﾺꚄఎ実ﾩꚐఏ宐ﾜꚭ౸寥ￊꚥ\u0c70宦ﾭꚁఋ宩ￌꚡ౿官ﾇꚀ౫寣ﾋꛑ\u0c65宙ﾦꚐఎ官ﾕꚜౘ寣ﾐꚱ\u0c72宋ﾑꚩ\u0c70宋\uffc8ꚡౄ客ﾧꚺ\u0c45客ﾖꚹఋ宄ﾭꚣ౯实ﾸꛑ౿宰\uffd0ꚤ౹宐\uffc9ꚰ౿寧ﾖꚒ౿宰ￏꚽఉ寺ￆꚃ\u0c49宐ﾮꛃఄ宼ﾔꚉ౾实ﾜꚤ\u0c76宿ﾐꛐఅ宐ﾨꛘఊ宁ﾪꚎ౫寤ￊꚯ\u0c5e宆ﾇꚺ\u0c0d定ﾷꚫొ安ﾾꚌఉ寡ﾌꛑ౷宴ﾛꚫఉ宐ﾉꛝౖ宒ﾇꚥ౫宽ﾍꚅఎ宂ﾘꚊ\u0c4e寥ﾮꛐ౮宣ﾭꚪ\u0c76宛ￊꚺ౭審ﾖꚁౄ寺ﾷꚆ\u0c75寥ﾉꚯ౬寺ﾴꚪె宇ﾚꛑఌ宾ﾚꚍ౮安ﾸꚚ౯宖ﾙꚡ౩寢ﾜꚦె定ﾜꛑ\u0c64宔ﾙꚋ\u0c49宁ﾍꚙఏ宧ﾸꛇఅ容ﾮꛜ\u0c45宔ﾛꚏ౭寣ﾵꛐ\u0c53宲ﾲꛞ\u0c5b寠ﾇꚌ౯宜ﾑꚧ\u0c54宅ￇꚏఋ宐ﾬꚰో宦ﾰꚥ\u0c4e宻\uffd0ꚃ\u0c5b寬ￂ").intern();

    private static String d(String str) {
        StringBuilder sb = new StringBuilder();
        char[] charArray = str.toCharArray();
        for (int i = 0; i < charArray.length; i++) {
            switch (i % 4) {
                case 0:
                    sb.append((char) (charArray[i] ^ 42728));
                    break;
                case 1:
                    sb.append((char) (charArray[i] ^ 3132));
                    break;
                case 2:
                    sb.append((char) (charArray[i] ^ 23505));
                    break;
                default:
                    sb.append((char) (charArray[i] ^ 65535));
                    break;
            }
        }
        return sb.toString();
    }

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        return 0;
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        return null;
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues contentValues) {
        return null;
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        return true;
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        return 0;
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        return null;
    }
}
