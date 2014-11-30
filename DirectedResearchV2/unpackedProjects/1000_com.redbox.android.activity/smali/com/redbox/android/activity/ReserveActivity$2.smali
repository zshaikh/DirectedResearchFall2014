.class Lcom/redbox/android/activity/ReserveActivity$2;
.super Ljava/lang/Object;
.source "ReserveActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/redbox/android/activity/ReserveActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/redbox/android/activity/ReserveActivity;


# direct methods
.method constructor <init>(Lcom/redbox/android/activity/ReserveActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/redbox/android/activity/ReserveActivity$2;->this$0:Lcom/redbox/android/activity/ReserveActivity;

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 145
    invoke-static {}, Lcom/redbox/android/http/ConnectionManager;->getInstance()Lcom/redbox/android/http/ConnectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/redbox/android/http/ConnectionManager;->shutDown()V

    .line 146
    iget-object v0, p0, Lcom/redbox/android/activity/ReserveActivity$2;->this$0:Lcom/redbox/android/activity/ReserveActivity;

    invoke-virtual {v0}, Lcom/redbox/android/activity/ReserveActivity;->finish()V

    .line 147
    return-void
.end method
