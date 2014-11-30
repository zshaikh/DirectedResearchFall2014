.class public Lcom/dolphin/browser/gesture/a/e;
.super Lcom/dolphin/browser/gesture/a/a;
.source "LoadUrlAction.java"


# static fields
.field public static final a:I

.field private static final b:Ljava/lang/reflect/Method;


# instance fields
.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 20
    const-string v0, "load url:"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/dolphin/browser/gesture/a/e;->a:I

    .line 26
    const/4 v0, 0x0

    .line 30
    :try_start_0
    const-class v1, Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    const-string v2, "actionLoadUrl2"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 32
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    :goto_0
    sput-object v0, Lcom/dolphin/browser/gesture/a/e;->b:Ljava/lang/reflect/Method;

    .line 36
    return-void

    .line 33
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "load url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/gesture/a/e;->b:Ljava/lang/reflect/Method;

    invoke-direct {p0, v0, p1, v1}, Lcom/dolphin/browser/gesture/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;)V

    .line 40
    iput-object p1, p0, Lcom/dolphin/browser/gesture/a/e;->c:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 86
    if-eqz p0, :cond_0

    .line 87
    const-string v0, "load url:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 89
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "load url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 63
    const-string v0, "http://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    const-string v0, "http://"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 71
    :cond_0
    :goto_0
    return-object p1

    .line 66
    :cond_1
    const-string v0, "https://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    const-string v0, "https://"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 71
    :cond_2
    const/4 p1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public varargs a(Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 78
    iget-object v0, p0, Lcom/dolphin/browser/gesture/a/e;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/dolphin/browser/search/e/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "blank"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    invoke-static {}, Lcom/dolphin/browser/search/e/a;->a()Lcom/dolphin/browser/search/e/a;

    move-result-object v0

    const-string v1, "gesture"

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/search/e/a;->a(Ljava/lang/String;)V

    .line 82
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dolphin/browser/gesture/a/e;->c:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-super {p0, p1, v0}, Lcom/dolphin/browser/gesture/a/a;->a(Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 46
    invoke-static {}, Lcom/dolphin/browser/gesture/i;->a()Lcom/dolphin/browser/gesture/i;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dolphin/browser/gesture/a/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/gesture/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    invoke-super {p0}, Lcom/dolphin/browser/gesture/a/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dolphin/browser/gesture/a/e;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50
    :cond_0
    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/dolphin/browser/gesture/a/e;->c:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 99
    invoke-super {p0, p1}, Lcom/dolphin/browser/gesture/a/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 105
    invoke-super {p0}, Lcom/dolphin/browser/gesture/a/a;->hashCode()I

    move-result v0

    return v0
.end method
