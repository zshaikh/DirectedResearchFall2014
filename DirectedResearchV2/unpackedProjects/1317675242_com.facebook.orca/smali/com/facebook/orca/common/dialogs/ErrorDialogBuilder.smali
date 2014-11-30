.class public Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;
.super Ljava/lang/Object;
.source "ErrorDialogBuilder.java"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/facebook/orca/common/dialogs/ErrorMessageGenerator;

.field private c:Ljava/lang/String;

.field private d:Lcom/facebook/orca/ops/ServiceException;

.field private e:Landroid/content/DialogInterface$OnClickListener;

.field private f:Landroid/app/Activity;

.field private g:Lcom/facebook/orca/app/OrcaAppType;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/orca/common/dialogs/ErrorMessageGenerator;Lcom/facebook/orca/app/OrcaAppType;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->b:Lcom/facebook/orca/common/dialogs/ErrorMessageGenerator;

    .line 44
    iput-object p3, p0, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->g:Lcom/facebook/orca/app/OrcaAppType;

    .line 45
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->f:Landroid/app/Activity;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;
    .locals 4

    .prologue
    .line 31
    invoke-static {p0}, Lcom/facebook/orca/app/OrcaInjector;->a(Landroid/content/Context;)Lcom/facebook/orca/app/OrcaInjector;

    move-result-object v1

    .line 32
    new-instance v2, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    const-class v0, Lcom/facebook/orca/common/dialogs/ErrorMessageGenerator;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/dialogs/ErrorMessageGenerator;

    const-class v3, Lcom/facebook/orca/app/OrcaAppType;

    invoke-virtual {v1, v3}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/app/OrcaAppType;

    invoke-direct {v2, p0, v0, v1}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;-><init>(Landroid/content/Context;Lcom/facebook/orca/common/dialogs/ErrorMessageGenerator;Lcom/facebook/orca/app/OrcaAppType;)V

    return-object v2
.end method

.method static synthetic b(Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;)Lcom/facebook/orca/ops/ServiceException;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->d:Lcom/facebook/orca/ops/ServiceException;

    return-object v0
.end method


# virtual methods
.method public a()Landroid/app/AlertDialog;
    .locals 6

    .prologue
    .line 74
    iget-object v0, p0, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->d:Lcom/facebook/orca/ops/ServiceException;

    if-eqz v0, :cond_4

    .line 75
    iget-object v0, p0, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->b:Lcom/facebook/orca/common/dialogs/ErrorMessageGenerator;

    iget-object v1, p0, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->d:Lcom/facebook/orca/ops/ServiceException;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/common/dialogs/ErrorMessageGenerator;->a(Lcom/facebook/orca/ops/ServiceException;Z)Ljava/lang/String;

    move-result-object v0

    .line 76
    if-nez v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->c:Ljava/lang/String;

    .line 82
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 83
    iget-object v0, p0, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a:Landroid/content/Context;

    const v1, 0x7f0a010b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 86
    :cond_1
    iget-object v1, p0, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->e:Landroid/content/DialogInterface$OnClickListener;

    .line 87
    if-nez v1, :cond_2

    .line 88
    new-instance v1, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder$1;-><init>(Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;)V

    .line 99
    :cond_2
    new-instance v2, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder$2;

    invoke-direct {v2, p0}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder$2;-><init>(Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;)V

    .line 111
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 112
    iget-object v4, p0, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a:Landroid/content/Context;

    const v5, 0x7f0a0002

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 113
    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 115
    iget-object v0, p0, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a:Landroid/content/Context;

    const v4, 0x7f0a0003

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 116
    iget-object v0, p0, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->d:Lcom/facebook/orca/ops/ServiceException;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->g:Lcom/facebook/orca/app/OrcaAppType;

    sget-object v1, Lcom/facebook/orca/app/OrcaAppType;->PROD:Lcom/facebook/orca/app/OrcaAppType;

    if-eq v0, v1, :cond_3

    .line 117
    iget-object v0, p0, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a:Landroid/content/Context;

    const v1, 0x7f0a010d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 121
    :cond_3
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 122
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 123
    return-object v0

    .line 80
    :cond_4
    iget-object v0, p0, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method public a(I)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->c:Ljava/lang/String;

    .line 54
    return-object p0
.end method

.method public a(Landroid/app/Activity;)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->f:Landroid/app/Activity;

    .line 69
    return-object p0
.end method

.method public a(Lcom/facebook/orca/ops/ServiceException;)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->d:Lcom/facebook/orca/ops/ServiceException;

    .line 59
    return-object p0
.end method
