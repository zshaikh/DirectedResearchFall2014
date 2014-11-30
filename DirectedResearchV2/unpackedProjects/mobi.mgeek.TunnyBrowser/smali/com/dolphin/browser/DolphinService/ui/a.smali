.class public Lcom/dolphin/browser/DolphinService/ui/a;
.super Ljava/lang/Object;
.source "AccountChooseHelper.java"


# instance fields
.field private final a:[Ljava/lang/String;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    if-eqz p2, :cond_0

    array-length v0, p2

    if-nez v0, :cond_1

    .line 19
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "param accountNames cannot be empty array"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 21
    :cond_1
    iput-object p2, p0, Lcom/dolphin/browser/DolphinService/ui/a;->a:[Ljava/lang/String;

    .line 22
    iput-object p1, p0, Lcom/dolphin/browser/DolphinService/ui/a;->b:Landroid/content/Context;

    .line 23
    return-void
.end method


# virtual methods
.method public a(Lcom/dolphin/browser/DolphinService/ui/e;)V
    .locals 3

    .prologue
    .line 34
    invoke-static {}, Lcom/dolphin/browser/ui/x;->a()Lcom/dolphin/browser/ui/x;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/ui/a;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/ui/x;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0556

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/ui/a;->a:[Ljava/lang/String;

    new-instance v2, Lcom/dolphin/browser/DolphinService/ui/c;

    invoke-direct {v2, p0, p1}, Lcom/dolphin/browser/DolphinService/ui/c;-><init>(Lcom/dolphin/browser/DolphinService/ui/a;Lcom/dolphin/browser/DolphinService/ui/e;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e00d9

    new-instance v2, Lcom/dolphin/browser/DolphinService/ui/b;

    invoke-direct {v2, p0, p1}, Lcom/dolphin/browser/DolphinService/ui/b;-><init>(Lcom/dolphin/browser/DolphinService/ui/a;Lcom/dolphin/browser/DolphinService/ui/e;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 54
    new-instance v1, Lcom/dolphin/browser/DolphinService/ui/d;

    invoke-direct {v1, p0, p1}, Lcom/dolphin/browser/DolphinService/ui/d;-><init>(Lcom/dolphin/browser/DolphinService/ui/a;Lcom/dolphin/browser/DolphinService/ui/e;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 63
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 64
    return-void
.end method
