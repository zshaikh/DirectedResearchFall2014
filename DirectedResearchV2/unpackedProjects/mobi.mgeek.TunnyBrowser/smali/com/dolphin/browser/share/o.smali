.class public Lcom/dolphin/browser/share/o;
.super Ljava/lang/Object;
.source "ShareConfig.java"


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/dolphin/browser/share/o;->a:Landroid/content/Context;

    .line 18
    return-void
.end method

.method private b()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 21
    iget-object v0, p0, Lcom/dolphin/browser/share/o;->a:Landroid/content/Context;

    const-string v1, "share_config"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 3

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/dolphin/browser/share/o;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "last_share_platform"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public a(I)V
    .locals 3

    .prologue
    .line 30
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v0

    invoke-direct {p0}, Lcom/dolphin/browser/share/o;->b()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "last_share_platform"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 33
    return-void
.end method
