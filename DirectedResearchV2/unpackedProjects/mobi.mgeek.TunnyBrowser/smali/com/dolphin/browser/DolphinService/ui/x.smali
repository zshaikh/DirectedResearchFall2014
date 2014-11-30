.class Lcom/dolphin/browser/DolphinService/ui/x;
.super Ljava/lang/Object;
.source "DeviceManageActivity.java"

# interfaces
.implements Lcom/dolphin/browser/push/l;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;)V
    .locals 0

    .prologue
    .line 365
    iput-object p1, p0, Lcom/dolphin/browser/DolphinService/ui/x;->a:Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 370
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/x;->a:Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;

    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/ui/x;->a:Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;

    invoke-static {v1}, Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;->d(Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;)Lcom/dolphin/browser/push/data/DeviceInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;->c(Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;Lcom/dolphin/browser/push/data/DeviceInfo;)V

    .line 371
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 376
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/x;->a:Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;

    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/ui/x;->a:Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;

    invoke-static {v1}, Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;->d(Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;)Lcom/dolphin/browser/push/data/DeviceInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;->d(Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;Lcom/dolphin/browser/push/data/DeviceInfo;)V

    .line 377
    return-void
.end method
