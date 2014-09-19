.class Lcom/fusepowered/m1/android/CachedVideoPlayerActivity$1;
.super Ljava/lang/Object;
.source "CachedVideoPlayerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->dismissAfter(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;


# direct methods
.method constructor <init>(Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 178
    iput-object p1, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity$1;->this$0:Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity$1;->this$0:Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;

    invoke-virtual {v0}, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->dismiss()V

    .line 184
    return-void
.end method
