.class public Lcom/dolphin/browser/q/d/j;
.super Ljava/lang/Object;
.source "SessionStore.java"


# instance fields
.field private a:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string v0, "twitter-session"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/q/d/j;->a:Landroid/content/SharedPreferences;

    .line 16
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/dolphin/browser/q/d/j;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 36
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 37
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 38
    return-void
.end method

.method public a(Lcom/dolphin/browser/q/d/k;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 20
    iget-object v0, p0, Lcom/dolphin/browser/q/d/j;->a:Landroid/content/SharedPreferences;

    const-string v1, "access_token"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/dolphin/browser/q/d/k;->a(Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lcom/dolphin/browser/q/d/j;->a:Landroid/content/SharedPreferences;

    const-string v1, "secret_token"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/dolphin/browser/q/d/k;->b(Ljava/lang/String;)V

    .line 22
    invoke-virtual {p1}, Lcom/dolphin/browser/q/d/k;->d()V

    .line 24
    invoke-virtual {p1}, Lcom/dolphin/browser/q/d/k;->a()Z

    move-result v0

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 3

    .prologue
    .line 41
    iget-object v0, p0, Lcom/dolphin/browser/q/d/j;->a:Landroid/content/SharedPreferences;

    const-string v1, "access_token"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/dolphin/browser/q/d/k;)V
    .locals 3

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dolphin/browser/q/d/j;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 29
    const-string v1, "access_token"

    invoke-virtual {p1}, Lcom/dolphin/browser/q/d/k;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 30
    const-string v1, "secret_token"

    invoke-virtual {p1}, Lcom/dolphin/browser/q/d/k;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 31
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 32
    return-void
.end method
