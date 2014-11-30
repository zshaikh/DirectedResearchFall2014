.class Lcom/dolphin/browser/launcher/l;
.super Ljava/lang/Object;
.source "DataManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/ContentValues;

.field final synthetic b:Lcom/dolphin/browser/launcher/bi;

.field final synthetic c:Lcom/dolphin/browser/launcher/f;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/launcher/f;Landroid/content/ContentValues;Lcom/dolphin/browser/launcher/bi;)V
    .locals 0

    .prologue
    .line 596
    iput-object p1, p0, Lcom/dolphin/browser/launcher/l;->c:Lcom/dolphin/browser/launcher/f;

    iput-object p2, p0, Lcom/dolphin/browser/launcher/l;->a:Landroid/content/ContentValues;

    iput-object p3, p0, Lcom/dolphin/browser/launcher/l;->b:Lcom/dolphin/browser/launcher/bi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 598
    iget-object v0, p0, Lcom/dolphin/browser/launcher/l;->c:Lcom/dolphin/browser/launcher/f;

    invoke-static {v0}, Lcom/dolphin/browser/launcher/f;->a(Lcom/dolphin/browser/launcher/f;)Lcom/dolphin/browser/launcher/q;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/launcher/l;->a:Landroid/content/ContentValues;

    iget-object v2, p0, Lcom/dolphin/browser/launcher/l;->c:Lcom/dolphin/browser/launcher/f;

    iget-object v3, p0, Lcom/dolphin/browser/launcher/l;->b:Lcom/dolphin/browser/launcher/bi;

    invoke-virtual {v3}, Lcom/dolphin/browser/launcher/bi;->g()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/dolphin/browser/launcher/f;->a(Lcom/dolphin/browser/launcher/f;J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/dolphin/browser/launcher/q;->a(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 599
    return-void
.end method
