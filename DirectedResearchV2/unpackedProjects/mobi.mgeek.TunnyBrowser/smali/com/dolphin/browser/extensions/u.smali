.class Lcom/dolphin/browser/extensions/u;
.super Ljava/lang/Object;
.source "FakeAddon.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/dolphin/browser/extensions/s;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/extensions/s;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 372
    iput-object p1, p0, Lcom/dolphin/browser/extensions/u;->b:Lcom/dolphin/browser/extensions/s;

    iput-object p2, p0, Lcom/dolphin/browser/extensions/u;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 376
    const-string v0, "addon bar"

    iget-object v1, p0, Lcom/dolphin/browser/extensions/u;->a:Ljava/lang/String;

    const-string v2, "cancel"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    return-void
.end method
