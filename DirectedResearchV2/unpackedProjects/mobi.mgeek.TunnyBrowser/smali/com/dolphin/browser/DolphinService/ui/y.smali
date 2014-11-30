.class Lcom/dolphin/browser/DolphinService/ui/y;
.super Ljava/lang/Object;
.source "DeviceManageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/push/data/DeviceInfo;

.field final synthetic b:Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;Lcom/dolphin/browser/push/data/DeviceInfo;)V
    .locals 0

    .prologue
    .line 391
    iput-object p1, p0, Lcom/dolphin/browser/DolphinService/ui/y;->b:Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;

    iput-object p2, p0, Lcom/dolphin/browser/DolphinService/ui/y;->a:Lcom/dolphin/browser/push/data/DeviceInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 396
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/y;->b:Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;

    invoke-static {v0}, Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;->b(Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;)Lcom/dolphin/browser/DolphinService/ui/aa;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/ui/y;->a:Lcom/dolphin/browser/push/data/DeviceInfo;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/DolphinService/ui/aa;->a(Lcom/dolphin/browser/push/data/DeviceInfo;)V

    .line 397
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/y;->b:Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;

    invoke-static {v0}, Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;->b(Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;)Lcom/dolphin/browser/DolphinService/ui/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/ui/aa;->notifyDataSetChanged()V

    .line 398
    return-void
.end method
