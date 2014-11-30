.class Lcom/facebook/orca/compose/LocationNuxView$1;
.super Ljava/lang/Object;
.source "LocationNuxView.java"

# interfaces
.implements Lcom/facebook/orca/prefs/UiCounters$Listener;


# instance fields
.field final synthetic a:Lcom/facebook/orca/compose/LocationNuxView;


# direct methods
.method constructor <init>(Lcom/facebook/orca/compose/LocationNuxView;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/facebook/orca/compose/LocationNuxView$1;->a:Lcom/facebook/orca/compose/LocationNuxView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 72
    const-string v0, "dismissed_location_nux"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "send_clicked"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/compose/LocationNuxView$1;->a:Lcom/facebook/orca/compose/LocationNuxView;

    iget-object v1, p0, Lcom/facebook/orca/compose/LocationNuxView$1;->a:Lcom/facebook/orca/compose/LocationNuxView;

    invoke-static {v1}, Lcom/facebook/orca/compose/LocationNuxView;->a(Lcom/facebook/orca/compose/LocationNuxView;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/facebook/orca/compose/LocationNuxView;->a(Lcom/facebook/orca/compose/LocationNuxView;Z)Z

    .line 74
    iget-object v0, p0, Lcom/facebook/orca/compose/LocationNuxView$1;->a:Lcom/facebook/orca/compose/LocationNuxView;

    invoke-static {v0}, Lcom/facebook/orca/compose/LocationNuxView;->b(Lcom/facebook/orca/compose/LocationNuxView;)V

    .line 76
    :cond_1
    return-void
.end method
