.class Lcom/dolphin/browser/theme/am;
.super Ljava/lang/Object;
.source "ThemeInstaller.java"

# interfaces
.implements Lcom/dolphin/browser/theme/d/h;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/theme/ThemeInstaller;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/theme/ThemeInstaller;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/dolphin/browser/theme/am;->a:Lcom/dolphin/browser/theme/ThemeInstaller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 72
    const-string v0, ".dtp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    const/4 v0, 0x0

    .line 79
    :goto_0
    return v0

    .line 74
    :cond_0
    const-string v0, ".dwp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    const/4 v0, 0x1

    goto :goto_0

    .line 76
    :cond_1
    const-string v0, ".dtf"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 77
    const/4 v0, 0x2

    goto :goto_0

    .line 79
    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public a(ILjava/io/File;)Lcom/dolphin/browser/theme/b/a;
    .locals 1

    .prologue
    .line 85
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dolphin/browser/theme/am;->a(Ljava/lang/String;)I

    move-result v0

    .line 86
    packed-switch v0, :pswitch_data_0

    .line 99
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 88
    :pswitch_0
    new-instance v0, Lcom/dolphin/browser/theme/b/e;

    invoke-direct {v0, p1, p2}, Lcom/dolphin/browser/theme/b/e;-><init>(ILjava/io/File;)V

    goto :goto_0

    .line 91
    :pswitch_1
    new-instance v0, Lcom/dolphin/browser/theme/b/i;

    invoke-direct {v0, p1, p2}, Lcom/dolphin/browser/theme/b/i;-><init>(ILjava/io/File;)V

    goto :goto_0

    .line 86
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
