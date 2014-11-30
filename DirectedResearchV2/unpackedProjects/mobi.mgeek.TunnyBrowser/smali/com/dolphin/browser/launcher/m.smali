.class Lcom/dolphin/browser/launcher/m;
.super Ljava/lang/Object;
.source "DataManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/dolphin/browser/launcher/f;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/launcher/f;J)V
    .locals 0

    .prologue
    .line 624
    iput-object p1, p0, Lcom/dolphin/browser/launcher/m;->b:Lcom/dolphin/browser/launcher/f;

    iput-wide p2, p0, Lcom/dolphin/browser/launcher/m;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 626
    iget-object v0, p0, Lcom/dolphin/browser/launcher/m;->b:Lcom/dolphin/browser/launcher/f;

    invoke-static {v0}, Lcom/dolphin/browser/launcher/f;->a(Lcom/dolphin/browser/launcher/f;)Lcom/dolphin/browser/launcher/q;

    move-result-object v0

    iget-wide v1, p0, Lcom/dolphin/browser/launcher/m;->a:J

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/launcher/q;->a(J)Z

    .line 627
    return-void
.end method
