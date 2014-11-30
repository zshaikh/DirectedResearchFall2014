.class Lcom/dolphin/browser/launcher/p;
.super Ljava/lang/Object;
.source "DataManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/launcher/bi;

.field final synthetic b:Lcom/dolphin/browser/launcher/f;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/launcher/f;Lcom/dolphin/browser/launcher/bi;)V
    .locals 0

    .prologue
    .line 929
    iput-object p1, p0, Lcom/dolphin/browser/launcher/p;->b:Lcom/dolphin/browser/launcher/f;

    iput-object p2, p0, Lcom/dolphin/browser/launcher/p;->a:Lcom/dolphin/browser/launcher/bi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 931
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 932
    iget-object v1, p0, Lcom/dolphin/browser/launcher/p;->a:Lcom/dolphin/browser/launcher/bi;

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/launcher/bi;->c(Landroid/content/ContentValues;)V

    .line 933
    iget-object v1, p0, Lcom/dolphin/browser/launcher/p;->b:Lcom/dolphin/browser/launcher/f;

    invoke-static {v1}, Lcom/dolphin/browser/launcher/f;->a(Lcom/dolphin/browser/launcher/f;)Lcom/dolphin/browser/launcher/q;

    move-result-object v1

    iget-object v2, p0, Lcom/dolphin/browser/launcher/p;->b:Lcom/dolphin/browser/launcher/f;

    iget-object v3, p0, Lcom/dolphin/browser/launcher/p;->a:Lcom/dolphin/browser/launcher/bi;

    invoke-virtual {v3}, Lcom/dolphin/browser/launcher/bi;->g()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/dolphin/browser/launcher/f;->a(Lcom/dolphin/browser/launcher/f;J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/dolphin/browser/launcher/q;->a(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 934
    return-void
.end method
