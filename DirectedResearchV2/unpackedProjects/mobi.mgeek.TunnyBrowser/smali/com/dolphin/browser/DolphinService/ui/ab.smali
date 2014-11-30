.class Lcom/dolphin/browser/DolphinService/ui/ab;
.super Ljava/lang/Object;
.source "DeviceManageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/push/data/DeviceInfo;

.field final synthetic b:Lcom/dolphin/browser/DolphinService/ui/aa;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/DolphinService/ui/aa;Lcom/dolphin/browser/push/data/DeviceInfo;)V
    .locals 0

    .prologue
    .line 333
    iput-object p1, p0, Lcom/dolphin/browser/DolphinService/ui/ab;->b:Lcom/dolphin/browser/DolphinService/ui/aa;

    iput-object p2, p0, Lcom/dolphin/browser/DolphinService/ui/ab;->a:Lcom/dolphin/browser/push/data/DeviceInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 338
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/ab;->b:Lcom/dolphin/browser/DolphinService/ui/aa;

    iget-object v0, v0, Lcom/dolphin/browser/DolphinService/ui/aa;->a:Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;

    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/ui/ab;->a:Lcom/dolphin/browser/push/data/DeviceInfo;

    invoke-static {v0, v1}, Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;->a(Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;Lcom/dolphin/browser/push/data/DeviceInfo;)V

    .line 339
    return-void
.end method
