.class public Lcom/dolphin/browser/i/c;
.super Ljava/lang/Object;
.source "NameServiceConfig.java"


# instance fields
.field private a:Landroid/content/SharedPreferences;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/dolphin/browser/i/c;->b:Landroid/content/Context;

    .line 19
    return-void
.end method

.method private b()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 23
    iget-object v0, p0, Lcom/dolphin/browser/i/c;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/dolphin/browser/i/c;->b:Landroid/content/Context;

    const-string v1, "name_service_config"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/i/c;->a:Landroid/content/SharedPreferences;

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/i/c;->a:Landroid/content/SharedPreferences;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/dolphin/browser/i/c;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "last_modified_time"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 37
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v0

    invoke-direct {p0}, Lcom/dolphin/browser/i/c;->b()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "last_modified_time"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 39
    return-void
.end method
