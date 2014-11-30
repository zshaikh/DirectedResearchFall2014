.class Lcom/fusepowered/m2/m2l/MraidVideoPlayerActivity$1;
.super Lcom/fusepowered/m2/m2l/BaseVideoView;
.source "MraidVideoPlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/m2/m2l/M2RvpActivity;->createVideoView()Lcom/fusepowered/m2/m2l/BaseVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/m2/m2l/M2RvpActivity;


# direct methods
.method constructor <init>(Lcom/fusepowered/m2/m2l/M2RvpActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/content/Context;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fusepowered/m2/m2l/MraidVideoPlayerActivity$1;->this$0:Lcom/fusepowered/m2/m2l/M2RvpActivity;

    .line 173
    invoke-direct {p0, p2}, Lcom/fusepowered/m2/m2l/BaseVideoView;-><init>(Landroid/content/Context;)V

    return-void
.end method
