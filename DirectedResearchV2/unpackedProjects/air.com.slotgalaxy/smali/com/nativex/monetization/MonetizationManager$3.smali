.class final Lcom/nativex/monetization/MonetizationManager$3;
.super Ljava/lang/Object;
.source "MonetizationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nativex/monetization/MonetizationManager;->update(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 563
    iput-object p1, p0, Lcom/nativex/monetization/MonetizationManager$3;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 567
    iget-object v0, p0, Lcom/nativex/monetization/MonetizationManager$3;->val$activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/nativex/monetization/mraid/MRAIDManager;->update(Landroid/app/Activity;)V

    .line 568
    return-void
.end method
