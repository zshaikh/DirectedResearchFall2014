.class Lcom/dolphin/browser/DolphinService/ui/bi;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/dolphin/browser/DolphinService/ui/LoginActivity;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/DolphinService/ui/LoginActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Lcom/dolphin/browser/DolphinService/ui/bi;->b:Lcom/dolphin/browser/DolphinService/ui/LoginActivity;

    iput-object p2, p0, Lcom/dolphin/browser/DolphinService/ui/bi;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/bi;->b:Lcom/dolphin/browser/DolphinService/ui/LoginActivity;

    invoke-static {v0}, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->c(Lcom/dolphin/browser/DolphinService/ui/LoginActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Landroid/content/DialogInterface;)Z

    .line 228
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/bi;->b:Lcom/dolphin/browser/DolphinService/ui/LoginActivity;

    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/ui/bi;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/df;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 229
    return-void
.end method
