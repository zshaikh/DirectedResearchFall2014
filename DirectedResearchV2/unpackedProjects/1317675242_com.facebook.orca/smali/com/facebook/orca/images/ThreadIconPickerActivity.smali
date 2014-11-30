.class public Lcom/facebook/orca/images/ThreadIconPickerActivity;
.super Lcom/facebook/orca/activity/OrcaFragmentActivity;
.source "ThreadIconPickerActivity.java"


# instance fields
.field private k:Landroid/support/v4/app/FragmentManager;

.field private m:Lcom/facebook/orca/photos/picking/PickMediaOperation;

.field private n:Lcom/facebook/orca/ops/OrcaServiceFragment;

.field private o:Z

.field private p:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/facebook/orca/activity/OrcaFragmentActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/images/ThreadIconPickerActivity;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/facebook/orca/images/ThreadIconPickerActivity;->a(Ljava/io/File;)V

    return-void
.end method

.method private a(Ljava/io/File;)V
    .locals 3

    .prologue
    .line 136
    iget-object v0, p0, Lcom/facebook/orca/images/ThreadIconPickerActivity;->n:Lcom/facebook/orca/ops/OrcaServiceFragment;

    invoke-virtual {v0}, Lcom/facebook/orca/ops/OrcaServiceFragment;->c()Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/ops/OrcaServiceOperation$State;->INIT:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    if-eq v0, v1, :cond_0

    .line 151
    :goto_0
    return-void

    .line 141
    :cond_0
    new-instance v0, Lcom/facebook/orca/attachments/MediaResource;

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/facebook/orca/attachments/MediaResource$Type;->PHOTO:Lcom/facebook/orca/attachments/MediaResource$Type;

    invoke-direct {v0, v1, v2}, Lcom/facebook/orca/attachments/MediaResource;-><init>(Landroid/net/Uri;Lcom/facebook/orca/attachments/MediaResource$Type;)V

    .line 142
    new-instance v1, Lcom/facebook/orca/server/ModifyThreadParamsBuilder;

    invoke-direct {v1}, Lcom/facebook/orca/server/ModifyThreadParamsBuilder;-><init>()V

    iget-object v2, p0, Lcom/facebook/orca/images/ThreadIconPickerActivity;->p:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/facebook/orca/server/ModifyThreadParamsBuilder;->a(Ljava/lang/String;)Lcom/facebook/orca/server/ModifyThreadParamsBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/facebook/orca/server/ModifyThreadParamsBuilder;->b(Z)Lcom/facebook/orca/server/ModifyThreadParamsBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/facebook/orca/server/ModifyThreadParamsBuilder;->a(Lcom/facebook/orca/attachments/MediaResource;)Lcom/facebook/orca/server/ModifyThreadParamsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/server/ModifyThreadParamsBuilder;->h()Lcom/facebook/orca/server/ModifyThreadParams;

    move-result-object v0

    .line 148
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 149
    const-string v2, "modifyThreadParams"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 150
    iget-object v0, p0, Lcom/facebook/orca/images/ThreadIconPickerActivity;->n:Lcom/facebook/orca/ops/OrcaServiceFragment;

    const-string v2, "modify_thread"

    invoke-virtual {v0, v2, v1}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/orca/images/ThreadIconPickerActivity;Z)Z
    .locals 0

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/facebook/orca/images/ThreadIconPickerActivity;->o:Z

    return p1
.end method

.method private c()V
    .locals 4

    .prologue
    const/16 v3, 0xc8

    const/4 v2, 0x1

    .line 109
    new-instance v0, Lcom/facebook/orca/photos/picking/PickMediaParams;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/orca/photos/picking/PickMediaParams;-><init>(Z)V

    .line 110
    invoke-virtual {v0, v2}, Lcom/facebook/orca/photos/picking/PickMediaParams;->a(Z)Lcom/facebook/orca/photos/picking/PickMediaParams;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/facebook/orca/photos/picking/PickMediaParams;->a(I)Lcom/facebook/orca/photos/picking/PickMediaParams;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/facebook/orca/photos/picking/PickMediaParams;->b(I)Lcom/facebook/orca/photos/picking/PickMediaParams;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/facebook/orca/photos/picking/PickMediaParams;->c(I)Lcom/facebook/orca/photos/picking/PickMediaParams;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/facebook/orca/photos/picking/PickMediaParams;->d(I)Lcom/facebook/orca/photos/picking/PickMediaParams;

    move-result-object v1

    sget-object v2, Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;->CAMERA:Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;

    invoke-virtual {v1, v2}, Lcom/facebook/orca/photos/picking/PickMediaParams;->a(Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;)Lcom/facebook/orca/photos/picking/PickMediaParams;

    move-result-object v1

    sget-object v2, Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;->GALLERY:Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;

    invoke-virtual {v1, v2}, Lcom/facebook/orca/photos/picking/PickMediaParams;->a(Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;)Lcom/facebook/orca/photos/picking/PickMediaParams;

    move-result-object v1

    sget-object v2, Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;->IMAGE_SEARCH:Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;

    invoke-virtual {v1, v2}, Lcom/facebook/orca/photos/picking/PickMediaParams;->a(Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;)Lcom/facebook/orca/photos/picking/PickMediaParams;

    move-result-object v1

    sget-object v2, Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;->CANCEL:Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;

    invoke-virtual {v1, v2}, Lcom/facebook/orca/photos/picking/PickMediaParams;->a(Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;)Lcom/facebook/orca/photos/picking/PickMediaParams;

    .line 120
    iget-object v1, p0, Lcom/facebook/orca/images/ThreadIconPickerActivity;->m:Lcom/facebook/orca/photos/picking/PickMediaOperation;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->a(Lcom/facebook/orca/photos/picking/PickMediaParams;)V

    .line 121
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/OrcaFragmentActivity;->a(Landroid/os/Bundle;)V

    .line 46
    invoke-virtual {p0}, Lcom/facebook/orca/images/ThreadIconPickerActivity;->d()Lcom/facebook/orca/app/OrcaInjector;

    move-result-object v0

    .line 47
    const-class v1, Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/FragmentManager;

    iput-object v0, p0, Lcom/facebook/orca/images/ThreadIconPickerActivity;->k:Landroid/support/v4/app/FragmentManager;

    .line 49
    invoke-virtual {p0}, Lcom/facebook/orca/images/ThreadIconPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 50
    const-string v1, "threadId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/images/ThreadIconPickerActivity;->p:Ljava/lang/String;

    .line 52
    iget-object v0, p0, Lcom/facebook/orca/images/ThreadIconPickerActivity;->k:Landroid/support/v4/app/FragmentManager;

    const-string v1, "pickMediaOperation"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/photos/picking/PickMediaOperation;

    iput-object v0, p0, Lcom/facebook/orca/images/ThreadIconPickerActivity;->m:Lcom/facebook/orca/photos/picking/PickMediaOperation;

    .line 54
    iget-object v0, p0, Lcom/facebook/orca/images/ThreadIconPickerActivity;->m:Lcom/facebook/orca/photos/picking/PickMediaOperation;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lcom/facebook/orca/photos/picking/PickMediaOperation;

    invoke-direct {v0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;-><init>()V

    iput-object v0, p0, Lcom/facebook/orca/images/ThreadIconPickerActivity;->m:Lcom/facebook/orca/photos/picking/PickMediaOperation;

    .line 56
    const-string v0, "pickMediaOperation"

    iget-object v1, p0, Lcom/facebook/orca/images/ThreadIconPickerActivity;->m:Lcom/facebook/orca/photos/picking/PickMediaOperation;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/orca/images/ThreadIconPickerActivity;->a(Ljava/lang/String;Landroid/support/v4/app/Fragment;)V

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/images/ThreadIconPickerActivity;->m:Lcom/facebook/orca/photos/picking/PickMediaOperation;

    new-instance v1, Lcom/facebook/orca/images/ThreadIconPickerActivity$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/images/ThreadIconPickerActivity$1;-><init>(Lcom/facebook/orca/images/ThreadIconPickerActivity;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->a(Lcom/facebook/orca/photos/picking/PickMediaOperation$OnMediaPickedListener;)V

    .line 82
    const-string v0, "setPhotoOperation"

    invoke-virtual {p0, v0}, Lcom/facebook/orca/images/ThreadIconPickerActivity;->a(Ljava/lang/String;)Lcom/facebook/orca/ops/OrcaServiceFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/images/ThreadIconPickerActivity;->n:Lcom/facebook/orca/ops/OrcaServiceFragment;

    .line 83
    iget-object v0, p0, Lcom/facebook/orca/images/ThreadIconPickerActivity;->n:Lcom/facebook/orca/ops/OrcaServiceFragment;

    new-instance v1, Lcom/facebook/orca/images/ThreadIconPickerActivity$2;

    invoke-direct {v1, p0}, Lcom/facebook/orca/images/ThreadIconPickerActivity$2;-><init>(Lcom/facebook/orca/images/ThreadIconPickerActivity;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;)V

    .line 96
    iget-object v0, p0, Lcom/facebook/orca/images/ThreadIconPickerActivity;->n:Lcom/facebook/orca/ops/OrcaServiceFragment;

    new-instance v1, Lcom/facebook/orca/ops/DialogBasedProgressIndicator;

    const v2, 0x7f0a00dc

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/ops/DialogBasedProgressIndicator;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Lcom/facebook/orca/ops/OperationProgressIndicator;)V

    .line 98
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 131
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/OrcaFragmentActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 132
    const-string v0, "photoPicked"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/orca/images/ThreadIconPickerActivity;->o:Z

    .line 133
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 102
    invoke-super {p0}, Lcom/facebook/orca/activity/OrcaFragmentActivity;->onResume()V

    .line 103
    iget-boolean v0, p0, Lcom/facebook/orca/images/ThreadIconPickerActivity;->o:Z

    if-nez v0, :cond_0

    .line 104
    invoke-direct {p0}, Lcom/facebook/orca/images/ThreadIconPickerActivity;->c()V

    .line 106
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 125
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/OrcaFragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 126
    const-string v0, "photoPicked"

    iget-boolean v1, p0, Lcom/facebook/orca/images/ThreadIconPickerActivity;->o:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 127
    return-void
.end method
