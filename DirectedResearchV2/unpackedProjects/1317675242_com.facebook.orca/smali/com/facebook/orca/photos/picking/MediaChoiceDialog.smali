.class public Lcom/facebook/orca/photos/picking/MediaChoiceDialog;
.super Landroid/app/Dialog;
.source "MediaChoiceDialog.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap",
            "<",
            "Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;",
            "Landroid/widget/Button;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/facebook/orca/photos/picking/MediaChoiceDialog$Listener;

.field private e:Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/EnumSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 75
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 52
    sget-object v0, Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;->CANCEL:Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;

    iput-object v0, p0, Lcom/facebook/orca/photos/picking/MediaChoiceDialog;->e:Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;

    .line 76
    iput-object p2, p0, Lcom/facebook/orca/photos/picking/MediaChoiceDialog;->a:Ljava/lang/String;

    .line 77
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/facebook/orca/photos/picking/MediaChoiceDialog;->c:Ljava/util/EnumMap;

    .line 79
    invoke-static {p3}, Ljava/util/EnumSet;->complementOf(Ljava/util/EnumSet;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/photos/picking/MediaChoiceDialog;->b:Ljava/util/EnumSet;

    .line 80
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/photos/picking/MediaChoiceDialog;Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;)Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/facebook/orca/photos/picking/MediaChoiceDialog;->e:Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;

    return-object p1
.end method

.method static synthetic a(Lcom/facebook/orca/photos/picking/MediaChoiceDialog;)Ljava/util/EnumMap;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/facebook/orca/photos/picking/MediaChoiceDialog;->c:Ljava/util/EnumMap;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/orca/photos/picking/MediaChoiceDialog;)Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/facebook/orca/photos/picking/MediaChoiceDialog;->e:Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/facebook/orca/photos/picking/MediaChoiceDialog$Listener;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/facebook/orca/photos/picking/MediaChoiceDialog;->d:Lcom/facebook/orca/photos/picking/MediaChoiceDialog$Listener;

    .line 146
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v2, 0x1

    .line 84
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 86
    invoke-virtual {p0}, Lcom/facebook/orca/photos/picking/MediaChoiceDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 87
    invoke-virtual {v0, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 88
    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 90
    invoke-virtual {p0, v2}, Lcom/facebook/orca/photos/picking/MediaChoiceDialog;->requestWindowFeature(I)Z

    .line 92
    iget-object v0, p0, Lcom/facebook/orca/photos/picking/MediaChoiceDialog;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/facebook/orca/photos/picking/MediaChoiceDialog;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/photos/picking/MediaChoiceDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 95
    :cond_0
    const v0, 0x7f030023

    invoke-virtual {p0, v0}, Lcom/facebook/orca/photos/picking/MediaChoiceDialog;->setContentView(I)V

    .line 97
    new-instance v1, Lcom/facebook/orca/photos/picking/MediaChoiceDialog$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/photos/picking/MediaChoiceDialog$1;-><init>(Lcom/facebook/orca/photos/picking/MediaChoiceDialog;)V

    .line 116
    invoke-static {}, Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;->values()[Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v4, v0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 117
    iget v0, v5, Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;->buttonId:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/photos/picking/MediaChoiceDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 118
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v6, p0, Lcom/facebook/orca/photos/picking/MediaChoiceDialog;->c:Ljava/util/EnumMap;

    invoke-virtual {v6, v5, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/photos/picking/MediaChoiceDialog;->b:Ljava/util/EnumSet;

    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;

    .line 123
    iget-object v2, p0, Lcom/facebook/orca/photos/picking/MediaChoiceDialog;->c:Ljava/util/EnumMap;

    invoke-virtual {v2, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 128
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/orca/photos/picking/MediaChoiceDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 129
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    if-le v1, v0, :cond_3

    .line 130
    iget-object v0, p0, Lcom/facebook/orca/photos/picking/MediaChoiceDialog;->c:Ljava/util/EnumMap;

    sget-object v1, Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;->CANCEL:Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;

    invoke-virtual {v0, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/Button;

    invoke-virtual {p0, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 132
    :cond_3
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/facebook/orca/photos/picking/MediaChoiceDialog;->d:Lcom/facebook/orca/photos/picking/MediaChoiceDialog$Listener;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/facebook/orca/photos/picking/MediaChoiceDialog;->d:Lcom/facebook/orca/photos/picking/MediaChoiceDialog$Listener;

    iget-object v1, p0, Lcom/facebook/orca/photos/picking/MediaChoiceDialog;->e:Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/photos/picking/MediaChoiceDialog$Listener;->a(Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;)V

    .line 138
    :cond_0
    return-void
.end method
