.class public Lcom/dolphin/browser/bookmark/ar;
.super Ljava/lang/Object;
.source "BookmarkFileParser.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/util/regex/Pattern;

.field private static final c:Ljava/util/regex/Pattern;

.field private static final d:Ljava/util/regex/Pattern;

.field private static final e:Ljava/util/regex/Pattern;

.field private static final f:Ljava/util/regex/Pattern;


# instance fields
.field private g:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/dolphin/browser/bookmark/bs;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x42

    .line 27
    const-class v0, Lcom/dolphin/browser/bookmark/ar;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/bookmark/ar;->a:Ljava/lang/String;

    .line 31
    const-string v0, "<p>"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/bookmark/ar;->b:Ljava/util/regex/Pattern;

    .line 32
    const-string v0, "(</(H3|A)>)\r?\n"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/bookmark/ar;->c:Ljava/util/regex/Pattern;

    .line 34
    const-string v0, "&(?!(#|amp|apos|quot|lt|gt))"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/bookmark/ar;->d:Ljava/util/regex/Pattern;

    .line 35
    const-string v0, "<"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/bookmark/ar;->e:Ljava/util/regex/Pattern;

    .line 36
    const-string v0, ">"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/bookmark/ar;->f:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    return-void
.end method

.method public static a(Ljava/io/File;)Ljava/io/File;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 71
    .line 75
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".xml"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 77
    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const-string v5, "UTF-8"

    invoke-direct {v2, v4, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 80
    :try_start_2
    const-string v4, "Converting HTML bookmark file \'%s\' to XML format..."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    invoke-static {v4, v5}, Lcom/dolphin/browser/bookmark/ar;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Lcom/dolphin/browser/util/IOUtilities;->loadContent(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 82
    invoke-static {v4}, Lcom/dolphin/browser/bookmark/ar;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 83
    invoke-virtual {v2, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 84
    const-string v4, "</META>"

    invoke-virtual {v2, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v2}, Ljava/io/Writer;->flush()V

    .line 86
    const-string v4, "Converted to XML format as \'%s\'."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Lcom/dolphin/browser/bookmark/ar;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 91
    invoke-static {v3}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    .line 92
    invoke-static {v2}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    .line 94
    :goto_0
    return-object v0

    .line 88
    :catch_0
    move-exception v0

    move-object v0, v1

    move-object v2, v1

    .line 91
    :goto_1
    invoke-static {v2}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    .line 92
    invoke-static {v0}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    move-object v0, v1

    .line 94
    goto :goto_0

    .line 91
    :catchall_0
    move-exception v0

    move-object v3, v1

    :goto_2
    invoke-static {v3}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    .line 92
    invoke-static {v1}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    throw v0

    .line 91
    :catchall_1
    move-exception v0

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v1, v2

    goto :goto_2

    .line 88
    :catch_1
    move-exception v0

    move-object v0, v1

    move-object v2, v3

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v0, v2

    move-object v2, v3

    goto :goto_1
.end method

.method static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 99
    sget-object v0, Lcom/dolphin/browser/bookmark/ar;->d:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, "&amp;"

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 100
    sget-object v1, Lcom/dolphin/browser/bookmark/ar;->e:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, "&lt;"

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 101
    sget-object v1, Lcom/dolphin/browser/bookmark/ar;->f:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, "&gt;"

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    return-object v0
.end method

.method private a()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/ar;->g:Ljava/util/Stack;

    if-nez v0, :cond_0

    .line 120
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/bookmark/ar;->g:Ljava/util/Stack;

    .line 122
    :cond_0
    return-void
.end method

.method private a(Lcom/dolphin/browser/bookmark/as;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 202
    const-string v0, "DL"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    const-string v0, "%s: Leaving folder: %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p1, Lcom/dolphin/browser/bookmark/as;->b:Lcom/dolphin/browser/bookmark/bs;

    invoke-virtual {v3}, Lcom/dolphin/browser/bookmark/bs;->c()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/dolphin/browser/bookmark/ar;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 204
    invoke-direct {p0}, Lcom/dolphin/browser/bookmark/ar;->c()Lcom/dolphin/browser/bookmark/bs;

    move-result-object v0

    iput-object v0, p1, Lcom/dolphin/browser/bookmark/as;->b:Lcom/dolphin/browser/bookmark/bs;

    .line 206
    :cond_0
    return-void
.end method

.method private a(Lcom/dolphin/browser/bookmark/bs;)V
    .locals 1

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/dolphin/browser/bookmark/ar;->a()V

    .line 138
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/ar;->g:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 139
    return-void
.end method

.method private static final varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 51
    return-void
.end method

.method private static final b(Ljava/lang/String;)J
    .locals 2

    .prologue
    .line 54
    .line 57
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 62
    :goto_0
    return-wide v0

    .line 58
    :catch_0
    move-exception v0

    .line 59
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method private b()V
    .locals 1

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/dolphin/browser/bookmark/ar;->a()V

    .line 126
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/ar;->g:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 127
    return-void
.end method

.method private b(Lcom/dolphin/browser/bookmark/as;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 209
    const-string v0, "DL"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    const-string v0, "%s: Entering folder: %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p1, Lcom/dolphin/browser/bookmark/as;->b:Lcom/dolphin/browser/bookmark/bs;

    invoke-virtual {v3}, Lcom/dolphin/browser/bookmark/bs;->c()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/dolphin/browser/bookmark/ar;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 211
    iget-object v0, p1, Lcom/dolphin/browser/bookmark/as;->b:Lcom/dolphin/browser/bookmark/bs;

    invoke-direct {p0, v0}, Lcom/dolphin/browser/bookmark/ar;->a(Lcom/dolphin/browser/bookmark/bs;)V

    .line 235
    :goto_0
    return-void

    .line 212
    :cond_0
    const-string v0, "H1"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 213
    const-string v0, "%s: Root folder: %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p1, Lcom/dolphin/browser/bookmark/as;->a:Lcom/dolphin/browser/bookmark/bs;

    invoke-virtual {v3}, Lcom/dolphin/browser/bookmark/bs;->c()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/dolphin/browser/bookmark/ar;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 214
    iget-object v0, p1, Lcom/dolphin/browser/bookmark/as;->a:Lcom/dolphin/browser/bookmark/bs;

    iput-object v0, p1, Lcom/dolphin/browser/bookmark/as;->b:Lcom/dolphin/browser/bookmark/bs;

    goto :goto_0

    .line 215
    :cond_1
    const-string v0, "H3"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 216
    const/4 v0, 0x0

    const-string v1, "ADD_DATE"

    invoke-interface {p2, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 217
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    .line 218
    invoke-direct {p0}, Lcom/dolphin/browser/bookmark/ar;->d()Lcom/dolphin/browser/bookmark/bs;

    move-result-object v6

    .line 219
    new-instance v0, Lcom/dolphin/browser/bookmark/bs;

    const/4 v2, 0x0

    invoke-static {v3}, Lcom/dolphin/browser/bookmark/ar;->b(Ljava/lang/String;)J

    move-result-wide v3

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/dolphin/browser/bookmark/bs;-><init>(Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 220
    invoke-virtual {v6, v0}, Lcom/dolphin/browser/bookmark/bs;->a(Lcom/dolphin/browser/bookmark/bs;)V

    .line 221
    const-string v1, "%s: Folder: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v0}, Lcom/dolphin/browser/bookmark/bs;->c()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/dolphin/browser/bookmark/ar;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 222
    iput-object v0, p1, Lcom/dolphin/browser/bookmark/as;->b:Lcom/dolphin/browser/bookmark/bs;

    goto :goto_0

    .line 223
    :cond_2
    const-string v0, "A"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 224
    const/4 v0, 0x0

    const-string v1, "HREF"

    invoke-interface {p2, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 225
    const/4 v0, 0x0

    const-string v1, "ADD_DATE"

    invoke-interface {p2, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 226
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    .line 228
    invoke-direct {p0}, Lcom/dolphin/browser/bookmark/ar;->d()Lcom/dolphin/browser/bookmark/bs;

    move-result-object v6

    .line 229
    new-instance v0, Lcom/dolphin/browser/bookmark/bs;

    invoke-static {v3}, Lcom/dolphin/browser/bookmark/ar;->b(Ljava/lang/String;)J

    move-result-wide v3

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/dolphin/browser/bookmark/bs;-><init>(Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 230
    invoke-virtual {v6, v0}, Lcom/dolphin/browser/bookmark/bs;->a(Lcom/dolphin/browser/bookmark/bs;)V

    .line 231
    const-string v1, "%s: Bookmark: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v0}, Lcom/dolphin/browser/bookmark/bs;->c()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/dolphin/browser/bookmark/ar;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 233
    :cond_3
    const-string v0, "%s: Ignored."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    invoke-static {v0, v1}, Lcom/dolphin/browser/bookmark/ar;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method private c()Lcom/dolphin/browser/bookmark/bs;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/ar;->g:Ljava/util/Stack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/bookmark/ar;->g:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/ar;->g:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/bookmark/bs;

    .line 133
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 107
    sget-object v0, Lcom/dolphin/browser/bookmark/ar;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 109
    sget-object v1, Lcom/dolphin/browser/bookmark/ar;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, "$1</DT>\n"

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 111
    sget-object v1, Lcom/dolphin/browser/bookmark/ar;->d:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, "&amp;"

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 112
    return-object v0
.end method

.method private d()Lcom/dolphin/browser/bookmark/bs;
    .locals 2

    .prologue
    .line 142
    const/4 v0, 0x0

    .line 143
    iget-object v1, p0, Lcom/dolphin/browser/bookmark/ar;->g:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 144
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/ar;->g:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/bookmark/bs;

    .line 146
    :cond_0
    return-object v0
.end method


# virtual methods
.method public b(Ljava/io/File;)Lcom/dolphin/browser/bookmark/bs;
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 150
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    move-object v0, v1

    .line 198
    :cond_1
    :goto_0
    return-object v0

    .line 154
    :cond_2
    invoke-static {}, Lcom/dolphin/browser/bookmark/an;->b()Lcom/dolphin/browser/bookmark/bs;

    move-result-object v0

    .line 155
    new-instance v5, Lcom/dolphin/browser/bookmark/as;

    invoke-direct {v5, v0}, Lcom/dolphin/browser/bookmark/as;-><init>(Lcom/dolphin/browser/bookmark/bs;)V

    .line 160
    :try_start_0
    const-string v2, "Parse bookmark file."

    invoke-static {v2}, Lcom/dolphin/browser/util/cw;->b(Ljava/lang/String;)Lcom/dolphin/browser/util/cw;

    move-result-object v6

    .line 161
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    .line 162
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7

    .line 164
    const-string v2, "Convert bookmark file to XML."

    invoke-static {v2}, Lcom/dolphin/browser/util/cw;->b(Ljava/lang/String;)Lcom/dolphin/browser/util/cw;

    move-result-object v3

    .line 165
    invoke-static {p1}, Lcom/dolphin/browser/bookmark/ar;->a(Ljava/io/File;)Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v2

    .line 166
    :try_start_1
    invoke-virtual {v3}, Lcom/dolphin/browser/util/cw;->a()J

    .line 167
    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const-string v8, "UTF-8"

    invoke-direct {v3, v4, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 168
    :try_start_2
    invoke-interface {v7, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 170
    const-string v4, "Parse bookmark structure."

    invoke-static {v4}, Lcom/dolphin/browser/util/cw;->b(Ljava/lang/String;)Lcom/dolphin/browser/util/cw;

    move-result-object v8

    .line 171
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    .line 172
    :goto_1
    const/4 v9, 0x1

    if-eq v4, v9, :cond_5

    .line 173
    packed-switch v4, :pswitch_data_0

    .line 184
    :goto_2
    :pswitch_0
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    goto :goto_1

    .line 175
    :pswitch_1
    invoke-direct {p0}, Lcom/dolphin/browser/bookmark/ar;->b()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 188
    :catch_0
    move-exception v0

    .line 189
    :goto_3
    :try_start_3
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 192
    invoke-static {v3}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    .line 193
    if-eqz v2, :cond_3

    .line 194
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_3
    move-object v0, v1

    goto :goto_0

    .line 178
    :pswitch_2
    :try_start_4
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v5, v7, v4}, Lcom/dolphin/browser/bookmark/ar;->b(Lcom/dolphin/browser/bookmark/as;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 192
    :catchall_0
    move-exception v0

    :goto_4
    invoke-static {v3}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    .line 193
    if-eqz v2, :cond_4

    .line 194
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_4
    throw v0

    .line 181
    :pswitch_3
    :try_start_5
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v5, v7, v4}, Lcom/dolphin/browser/bookmark/ar;->a(Lcom/dolphin/browser/bookmark/as;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    goto :goto_2

    .line 186
    :cond_5
    invoke-virtual {v8}, Lcom/dolphin/browser/util/cw;->a()J

    .line 187
    invoke-virtual {v6}, Lcom/dolphin/browser/util/cw;->a()J
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 192
    invoke-static {v3}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    .line 193
    if-eqz v2, :cond_1

    .line 194
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto/16 :goto_0

    .line 192
    :catchall_1
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v3, v1

    goto :goto_4

    .line 188
    :catch_1
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v3, v1

    goto :goto_3

    .line 173
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
