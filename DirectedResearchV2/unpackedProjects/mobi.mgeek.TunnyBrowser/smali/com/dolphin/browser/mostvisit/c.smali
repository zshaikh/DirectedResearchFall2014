.class Lcom/dolphin/browser/mostvisit/c;
.super Ljava/lang/Object;
.source "MostVisitedManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/SharedPreferences;

.field final synthetic b:Lcom/dolphin/browser/mostvisit/b;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/mostvisit/b;Landroid/content/SharedPreferences;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/dolphin/browser/mostvisit/c;->b:Lcom/dolphin/browser/mostvisit/b;

    iput-object p2, p0, Lcom/dolphin/browser/mostvisit/c;->a:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 77
    iget-object v0, p0, Lcom/dolphin/browser/mostvisit/c;->b:Lcom/dolphin/browser/mostvisit/b;

    invoke-static {v0}, Lcom/dolphin/browser/mostvisit/b;->a(Lcom/dolphin/browser/mostvisit/b;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/dolphin/browser/mostvisit/c;->b:Lcom/dolphin/browser/mostvisit/b;

    invoke-static {v0}, Lcom/dolphin/browser/mostvisit/b;->b(Lcom/dolphin/browser/mostvisit/b;)I

    .line 79
    iget-object v0, p0, Lcom/dolphin/browser/mostvisit/c;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 80
    const-string v1, "has_init_most_visit_once"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 81
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 83
    :cond_0
    return-void
.end method
