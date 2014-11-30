.class Lcom/dolphin/browser/extensions/t;
.super Ljava/lang/Object;
.source "FakeAddon.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/dolphin/browser/extensions/s;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/extensions/s;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 379
    iput-object p1, p0, Lcom/dolphin/browser/extensions/t;->b:Lcom/dolphin/browser/extensions/s;

    iput-object p2, p0, Lcom/dolphin/browser/extensions/t;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3

    .prologue
    .line 383
    const-string v0, "addon bar"

    iget-object v1, p0, Lcom/dolphin/browser/extensions/t;->a:Ljava/lang/String;

    const-string v2, "cancel"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    return-void
.end method
