.class public Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog;
.super Lcom/nativex/monetization/dialogs/custom/BaseDialog;
.source "AddCalendarEntryDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog$OnCalendarEntryClicked;,
        Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog$Calendar;
    }
.end annotation


# instance fields
.field private body:Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialogBody;

.field private onClose:Landroid/view/View$OnClickListener;

.field private title:Lcom/nativex/monetization/dialogs/custom/MessageDialogTitle;

.field private userButtonListener:Landroid/view/View$OnClickListener;

.field private userCloseListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/nativex/monetization/dialogs/custom/BaseDialog;-><init>(Landroid/content/Context;)V

    .line 41
    new-instance v0, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog$1;

    invoke-direct {v0, p0}, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog$1;-><init>(Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog;)V

    iput-object v0, p0, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog;->onClose:Landroid/view/View$OnClickListener;

    .line 61
    invoke-direct {p0}, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog;->init()V

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog;->userButtonListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog;->userCloseListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method private init()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, -0x2

    .line 65
    new-instance v1, Lcom/nativex/monetization/dialogs/custom/MessageDialogTitle;

    invoke-virtual {p0}, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/nativex/monetization/dialogs/custom/MessageDialogTitle;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog;->title:Lcom/nativex/monetization/dialogs/custom/MessageDialogTitle;

    .line 66
    new-instance v1, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialogBody;

    invoke-virtual {p0}, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialogBody;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog;->body:Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialogBody;

    .line 68
    iget-object v1, p0, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog;->title:Lcom/nativex/monetization/dialogs/custom/MessageDialogTitle;

    invoke-virtual {p0, v1}, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog;->addView(Landroid/view/View;)V

    .line 69
    iget-object v1, p0, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog;->body:Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialogBody;

    invoke-virtual {p0, v1}, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog;->addView(Landroid/view/View;)V

    .line 70
    sget-object v1, Lcom/nativex/monetization/theme/ThemeElementTypes;->MESSAGE_DIALOG_BACKGROUND:Lcom/nativex/monetization/theme/ThemeElementTypes;

    invoke-static {v1}, Lcom/nativex/monetization/theme/ThemeManager;->getDrawable(Lcom/nativex/monetization/theme/ThemeElementTypes;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog;->setDialogBackground(Landroid/graphics/drawable/Drawable;)V

    .line 72
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 73
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog;->title:Lcom/nativex/monetization/dialogs/custom/MessageDialogTitle;

    invoke-virtual {v1, v0}, Lcom/nativex/monetization/dialogs/custom/MessageDialogTitle;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    iget-object v1, p0, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog;->title:Lcom/nativex/monetization/dialogs/custom/MessageDialogTitle;

    iget-object v2, p0, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog;->onClose:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/nativex/monetization/dialogs/custom/MessageDialogTitle;->setOnCloseClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object v1, p0, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog;->body:Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialogBody;

    iget-object v2, p0, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog;->onClose:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialogBody;->setButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .end local v0    # "params":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v1, 0x3f800000

    invoke-direct {v0, v4, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 78
    .restart local v0    # "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog;->body:Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialogBody;

    invoke-virtual {v1, v0}, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialogBody;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    iget-object v1, p0, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog;->title:Lcom/nativex/monetization/dialogs/custom/MessageDialogTitle;

    const-string v2, "Confirm adding calendar entry"

    invoke-virtual {v1, v2}, Lcom/nativex/monetization/dialogs/custom/MessageDialogTitle;->setTitle(Ljava/lang/String;)V

    .line 81
    return-void
.end method


# virtual methods
.method public addCalendars(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog$Calendar;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 85
    .local p1, "calendars":Ljava/util/List;, "Ljava/util/List<Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog$Calendar;>;"
    iget-object v0, p0, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog;->body:Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialogBody;

    invoke-virtual {v0, p1}, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialogBody;->addCalendars(Ljava/util/List;)V

    .line 86
    return-void
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 149
    invoke-super {p0}, Lcom/nativex/monetization/dialogs/custom/BaseDialog;->dismiss()V

    .line 150
    invoke-static {}, Lcom/nativex/monetization/manager/ImageCacheManager;->getInstance()Lcom/nativex/monetization/interfaces/IImageCacheManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/nativex/monetization/interfaces/IImageCacheManager;->releaseLater()V

    .line 151
    return-void
.end method

.method public setBodyText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog;->body:Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialogBody;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog;->body:Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialogBody;

    invoke-virtual {v0, p1}, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialogBody;->setText(Ljava/lang/String;)V

    .line 93
    :cond_0
    return-void
.end method

.method public setButtonText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog;->body:Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialogBody;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog;->body:Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialogBody;

    invoke-virtual {v0, p1}, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialogBody;->setButtonText(Ljava/lang/String;)V

    .line 100
    :cond_0
    return-void
.end method

.method public setOnButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog;->userButtonListener:Landroid/view/View$OnClickListener;

    .line 105
    return-void
.end method

.method public setOnCalendarClickedListener(Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog$OnCalendarEntryClicked;)V
    .locals 1
    .param p1, "listener"    # Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog$OnCalendarEntryClicked;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog;->body:Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialogBody;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog;->body:Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialogBody;

    invoke-virtual {v0, p1}, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialogBody;->setOnCalendarClickedListner(Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog$OnCalendarEntryClicked;)V

    .line 145
    :cond_0
    return-void
.end method

.method public setOnCloseClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog;->userCloseListener:Landroid/view/View$OnClickListener;

    .line 110
    return-void
.end method
