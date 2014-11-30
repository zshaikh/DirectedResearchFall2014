.class public Lcom/acmeaom/android/a/a/b/f;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field static final synthetic a:Z

.field private static final b:Lcom/acmeaom/android/a/a/b/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/acmeaom/android/a/a/b/f;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/acmeaom/android/a/a/b/f;->a:Z

    .line 17
    new-instance v0, Lcom/acmeaom/android/a/a/b/f;

    invoke-direct {v0}, Lcom/acmeaom/android/a/a/b/f;-><init>()V

    sput-object v0, Lcom/acmeaom/android/a/a/b/f;->b:Lcom/acmeaom/android/a/a/b/f;

    return-void

    .line 16
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/acmeaom/android/a/a/b/f;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/acmeaom/android/a/a/b/f;->b:Lcom/acmeaom/android/a/a/b/f;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lcom/acmeaom/android/a/a/b/k;
    .locals 3

    .prologue
    .line 32
    sget-object v1, Lcom/acmeaom/android/myradar/app/MyRadarApplication;->a:Landroid/content/Context;

    .line 33
    const-string v0, "bsSigmetsFactory.plist"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f040001

    .line 36
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 37
    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/acmeaom/android/a/a/b/f;->a(Landroid/content/res/XmlResourceParser;I)V

    .line 41
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v0

    if-nez v0, :cond_0

    .line 42
    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/acmeaom/android/a/a/b/f;->a(Landroid/content/res/XmlResourceParser;I)V

    .line 45
    :cond_0
    invoke-static {v1}, Lcom/acmeaom/android/a/a/b/f;->a(Landroid/content/res/XmlResourceParser;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/a/a/b/k;

    .line 46
    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/acmeaom/android/a/a/b/f;->a(Landroid/content/res/XmlResourceParser;I)V

    .line 47
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 57
    :goto_1
    return-object v0

    .line 33
    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    .line 49
    :catch_0
    move-exception v0

    .line 50
    invoke-static {v0}, Lcom/acmeaom/android/myradar/b/a;->a(Ljava/lang/Throwable;)V

    .line 57
    :goto_2
    const/4 v0, 0x0

    goto :goto_1

    .line 51
    :catch_1
    move-exception v0

    .line 52
    invoke-static {v0}, Lcom/acmeaom/android/myradar/b/a;->a(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 53
    :catch_2
    move-exception v0

    .line 54
    invoke-static {v0}, Lcom/acmeaom/android/myradar/b/a;->a(Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method private static a(Landroid/content/res/XmlResourceParser;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 95
    const-string v0, "plist"

    invoke-static {p0, v0}, Lcom/acmeaom/android/a/a/b/f;->a(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)V

    .line 96
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/acmeaom/android/a/a/b/f;->a(Landroid/content/res/XmlResourceParser;I)V

    .line 97
    invoke-static {p0}, Lcom/acmeaom/android/a/a/b/f;->c(Landroid/content/res/XmlResourceParser;)Ljava/lang/Object;

    move-result-object v0

    .line 98
    const/4 v1, 0x3

    invoke-static {p0, v1}, Lcom/acmeaom/android/a/a/b/f;->a(Landroid/content/res/XmlResourceParser;I)V

    .line 100
    return-object v0
.end method

.method private static a(Landroid/content/res/XmlResourceParser;I)V
    .locals 2

    .prologue
    .line 87
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unexpected event type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/acmeaom/android/myradar/b/a;->a(Ljava/lang/String;)V

    .line 90
    :cond_0
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->next()I

    .line 91
    return-void
.end method

.method private static a(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 105
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unrecognized tag name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/acmeaom/android/myradar/b/a;->a(Ljava/lang/String;)V

    .line 109
    :cond_0
    return-void
.end method

.method private static b(Landroid/content/res/XmlResourceParser;)Lcom/acmeaom/android/a/a/b/k;
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    .line 113
    const-string v0, "dict"

    invoke-static {p0, v0}, Lcom/acmeaom/android/a/a/b/f;->a(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)V

    .line 114
    invoke-static {p0, v3}, Lcom/acmeaom/android/a/a/b/f;->a(Landroid/content/res/XmlResourceParser;I)V

    .line 115
    new-instance v0, Lcom/acmeaom/android/a/a/b/k;

    invoke-direct {v0}, Lcom/acmeaom/android/a/a/b/k;-><init>()V

    .line 117
    :goto_0
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v1

    if-eq v1, v4, :cond_1

    .line 118
    const-string v1, "key"

    invoke-static {p0, v1}, Lcom/acmeaom/android/a/a/b/f;->a(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)V

    .line 119
    invoke-static {p0, v3}, Lcom/acmeaom/android/a/a/b/f;->a(Landroid/content/res/XmlResourceParser;I)V

    .line 120
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v1

    .line 121
    const/4 v2, 0x4

    invoke-static {p0, v2}, Lcom/acmeaom/android/a/a/b/f;->a(Landroid/content/res/XmlResourceParser;I)V

    .line 122
    invoke-static {p0, v4}, Lcom/acmeaom/android/a/a/b/f;->a(Landroid/content/res/XmlResourceParser;I)V

    .line 123
    sget-boolean v2, Lcom/acmeaom/android/a/a/b/f;->a:Z

    if-nez v2, :cond_0

    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v2

    if-eq v2, v3, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 124
    :cond_0
    invoke-static {p0}, Lcom/acmeaom/android/a/a/b/f;->c(Landroid/content/res/XmlResourceParser;)Ljava/lang/Object;

    move-result-object v2

    .line 125
    invoke-virtual {v0, v1, v2}, Lcom/acmeaom/android/a/a/b/k;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 127
    :cond_1
    invoke-static {p0, v4}, Lcom/acmeaom/android/a/a/b/f;->a(Landroid/content/res/XmlResourceParser;I)V

    .line 129
    return-object v0
.end method

.method private static c(Landroid/content/res/XmlResourceParser;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 135
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 136
    const-string v1, "array"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    invoke-static {p0}, Lcom/acmeaom/android/a/a/b/f;->g(Landroid/content/res/XmlResourceParser;)Lcom/acmeaom/android/a/a/b/e;

    move-result-object v0

    .line 157
    :goto_0
    return-object v0

    .line 138
    :cond_0
    const-string v1, "data"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 156
    :cond_1
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unrecognized tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/acmeaom/android/myradar/b/a;->a(Ljava/lang/String;)V

    .line 157
    const/4 v0, 0x0

    goto :goto_0

    .line 140
    :cond_2
    const-string v1, "date"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 142
    const-string v1, "dict"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 143
    invoke-static {p0}, Lcom/acmeaom/android/a/a/b/f;->b(Landroid/content/res/XmlResourceParser;)Lcom/acmeaom/android/a/a/b/k;

    move-result-object v0

    goto :goto_0

    .line 144
    :cond_3
    const-string v1, "real"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 145
    invoke-static {p0}, Lcom/acmeaom/android/a/a/b/f;->f(Landroid/content/res/XmlResourceParser;)Lcom/acmeaom/android/a/a/b/aa;

    move-result-object v0

    goto :goto_0

    .line 146
    :cond_4
    const-string v1, "integer"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 147
    invoke-static {p0}, Lcom/acmeaom/android/a/a/b/f;->e(Landroid/content/res/XmlResourceParser;)Lcom/acmeaom/android/a/a/b/aa;

    move-result-object v0

    goto :goto_0

    .line 148
    :cond_5
    const-string v1, "string"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 149
    invoke-static {p0}, Lcom/acmeaom/android/a/a/b/f;->d(Landroid/content/res/XmlResourceParser;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 150
    :cond_6
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 152
    const-string v1, "false"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1
.end method

.method private static d(Landroid/content/res/XmlResourceParser;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 162
    const-string v0, "string"

    invoke-static {p0, v0}, Lcom/acmeaom/android/a/a/b/f;->a(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)V

    .line 163
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/acmeaom/android/a/a/b/f;->a(Landroid/content/res/XmlResourceParser;I)V

    .line 164
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 165
    const/4 v1, 0x4

    invoke-static {p0, v1}, Lcom/acmeaom/android/a/a/b/f;->a(Landroid/content/res/XmlResourceParser;I)V

    .line 166
    const/4 v1, 0x3

    invoke-static {p0, v1}, Lcom/acmeaom/android/a/a/b/f;->a(Landroid/content/res/XmlResourceParser;I)V

    .line 167
    return-object v0
.end method

.method private static e(Landroid/content/res/XmlResourceParser;)Lcom/acmeaom/android/a/a/b/aa;
    .locals 2

    .prologue
    .line 172
    const-string v0, "integer"

    invoke-static {p0, v0}, Lcom/acmeaom/android/a/a/b/f;->a(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)V

    .line 173
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/acmeaom/android/a/a/b/f;->a(Landroid/content/res/XmlResourceParser;I)V

    .line 174
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 175
    new-instance v1, Lcom/acmeaom/android/a/a/b/aa;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/acmeaom/android/a/a/b/aa;-><init>(Ljava/lang/Integer;)V

    .line 176
    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/acmeaom/android/a/a/b/f;->a(Landroid/content/res/XmlResourceParser;I)V

    .line 177
    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/acmeaom/android/a/a/b/f;->a(Landroid/content/res/XmlResourceParser;I)V

    .line 178
    return-object v1
.end method

.method private static f(Landroid/content/res/XmlResourceParser;)Lcom/acmeaom/android/a/a/b/aa;
    .locals 2

    .prologue
    .line 184
    const-string v0, "real"

    invoke-static {p0, v0}, Lcom/acmeaom/android/a/a/b/f;->a(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)V

    .line 185
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/acmeaom/android/a/a/b/f;->a(Landroid/content/res/XmlResourceParser;I)V

    .line 186
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 187
    new-instance v1, Lcom/acmeaom/android/a/a/b/aa;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/acmeaom/android/a/a/b/aa;-><init>(Ljava/lang/Float;)V

    .line 188
    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/acmeaom/android/a/a/b/f;->a(Landroid/content/res/XmlResourceParser;I)V

    .line 189
    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/acmeaom/android/a/a/b/f;->a(Landroid/content/res/XmlResourceParser;I)V

    .line 190
    return-object v1
.end method

.method private static g(Landroid/content/res/XmlResourceParser;)Lcom/acmeaom/android/a/a/b/e;
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    .line 195
    const-string v0, "array"

    invoke-static {p0, v0}, Lcom/acmeaom/android/a/a/b/f;->a(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)V

    .line 196
    invoke-static {p0, v2}, Lcom/acmeaom/android/a/a/b/f;->a(Landroid/content/res/XmlResourceParser;I)V

    .line 197
    new-instance v0, Lcom/acmeaom/android/a/a/b/e;

    invoke-direct {v0}, Lcom/acmeaom/android/a/a/b/e;-><init>()V

    .line 199
    :goto_0
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v1

    if-eq v1, v3, :cond_1

    .line 200
    sget-boolean v1, Lcom/acmeaom/android/a/a/b/f;->a:Z

    if-nez v1, :cond_0

    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v1

    if-eq v1, v2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 201
    :cond_0
    invoke-static {p0}, Lcom/acmeaom/android/a/a/b/f;->c(Landroid/content/res/XmlResourceParser;)Ljava/lang/Object;

    move-result-object v1

    .line 202
    invoke-virtual {v0, v1}, Lcom/acmeaom/android/a/a/b/e;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 204
    :cond_1
    invoke-static {p0, v3}, Lcom/acmeaom/android/a/a/b/f;->a(Landroid/content/res/XmlResourceParser;I)V

    .line 206
    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 24
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 25
    const/4 v0, 0x0

    .line 28
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p2, :cond_1

    const-string v0, ""

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
