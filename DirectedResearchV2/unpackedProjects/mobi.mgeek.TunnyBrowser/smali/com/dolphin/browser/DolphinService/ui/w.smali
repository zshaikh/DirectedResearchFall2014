.class Lcom/dolphin/browser/DolphinService/ui/w;
.super Ljava/lang/Object;
.source "DeviceManageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/push/data/DeviceInfo;

.field final synthetic b:Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;Lcom/dolphin/browser/push/data/DeviceInfo;)V
    .locals 0

    .prologue
    .line 351
    iput-object p1, p0, Lcom/dolphin/browser/DolphinService/ui/w;->b:Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;

    iput-object p2, p0, Lcom/dolphin/browser/DolphinService/ui/w;->a:Lcom/dolphin/browser/push/data/DeviceInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 356
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/w;->b:Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;

    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/ui/w;->a:Lcom/dolphin/browser/push/data/DeviceInfo;

    invoke-static {v0, v1}, Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;->b(Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;Lcom/dolphin/browser/push/data/DeviceInfo;)V

    .line 357
    return-void
.end method
