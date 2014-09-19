.class final Lcom/fusepowered/fuseapi/FuseAPI$6;
.super Ljava/lang/Object;
.source "FuseAPI.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/fuseapi/FuseAPI;->showDialog(Lcom/fusepowered/util/Message;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$message:Lcom/fusepowered/util/Message;

.field final synthetic val$next:I


# direct methods
.method constructor <init>(Lcom/fusepowered/util/Message;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2250
    iput-object p1, p0, Lcom/fusepowered/fuseapi/FuseAPI$6;->val$message:Lcom/fusepowered/util/Message;

    iput p2, p0, Lcom/fusepowered/fuseapi/FuseAPI$6;->val$next:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 2256
    iget-object v0, p0, Lcom/fusepowered/fuseapi/FuseAPI$6;->val$message:Lcom/fusepowered/util/Message;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fusepowered/util/Message;->setDisplayed(Z)V

    .line 2257
    iget-object v0, p0, Lcom/fusepowered/fuseapi/FuseAPI$6;->val$message:Lcom/fusepowered/util/Message;

    invoke-virtual {v0}, Lcom/fusepowered/util/Message;->getId()I

    move-result v0

    #calls: Lcom/fusepowered/fuseapi/FuseAPI;->notificationView(I)V
    invoke-static {v0}, Lcom/fusepowered/fuseapi/FuseAPI;->access$200(I)V

    .line 2258
    iget v0, p0, Lcom/fusepowered/fuseapi/FuseAPI$6;->val$next:I

    #calls: Lcom/fusepowered/fuseapi/FuseAPI;->showNextMessage(I)V
    invoke-static {v0}, Lcom/fusepowered/fuseapi/FuseAPI;->access$500(I)V

    .line 2259
    return-void
.end method
