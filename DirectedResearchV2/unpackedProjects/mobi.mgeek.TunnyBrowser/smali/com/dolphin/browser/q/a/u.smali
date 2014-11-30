.class public Lcom/dolphin/browser/q/a/u;
.super Ljava/lang/Object;
.source "SessionStore.java"


# instance fields
.field private a:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string v0, "box-session"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/q/a/u;->a:Landroid/content/SharedPreferences;

    .line 18
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/dolphin/browser/q/a/u;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 34
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 35
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 36
    return-void
.end method

.method public a(Lcom/b/a/a;)Z
    .locals 3

    .prologue
    .line 22
    iget-object v0, p0, Lcom/dolphin/browser/q/a/u;->a:Landroid/content/SharedPreferences;

    const-string v1, "access_token"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/b/a/a;->b(Ljava/lang/String;)V

    .line 23
    invoke-virtual {p1}, Lcom/b/a/a;->a()Z

    move-result v0

    return v0
.end method

.method public b(Lcom/b/a/a;)V
    .locals 3

    .prologue
    .line 27
    iget-object v0, p0, Lcom/dolphin/browser/q/a/u;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 28
    const-string v1, "access_token"

    invoke-virtual {p1}, Lcom/b/a/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 29
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 30
    return-void
.end method
