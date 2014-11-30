.class Lcom/playtika/extensions/fbsdk/FbSdkAuthActivity$1;
.super Ljava/lang/Object;
.source "FbSdkAuthActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/playtika/extensions/fbsdk/FbSdkAuthActivity;->finishWithAlert()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/playtika/extensions/fbsdk/FbSdkAuthActivity;


# direct methods
.method constructor <init>(Lcom/playtika/extensions/fbsdk/FbSdkAuthActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/playtika/extensions/fbsdk/FbSdkAuthActivity$1;->this$0:Lcom/playtika/extensions/fbsdk/FbSdkAuthActivity;

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 154
    iget-object v0, p0, Lcom/playtika/extensions/fbsdk/FbSdkAuthActivity$1;->this$0:Lcom/playtika/extensions/fbsdk/FbSdkAuthActivity;

    invoke-virtual {v0}, Lcom/playtika/extensions/fbsdk/FbSdkAuthActivity;->finish()V

    .line 156
    return-void
.end method
