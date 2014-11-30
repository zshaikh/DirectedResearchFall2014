.class public Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialogBody;
.super Landroid/widget/LinearLayout;
.source "AddCalendarEntryDialogBody.java"


# static fields
.field public static final ID_BODY_BUTTON:I = 0x424a19

.field public static final ID_BODY_IMAGE:I = 0x6c7ae

.field public static final ID_BODY_TEXT:I = 0x424a17


# instance fields
.field private button:Lcom/nativex/monetization/dialogs/custom/AdvancedButton;

.field private onCalendarClickedListener:Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog$OnCalendarEntryClicked;

.field private onCalendarEntryClick:Landroid/view/View$OnClickListener;

.field private scrollContainer:Landroid/widget/LinearLayout;

.field private scroller:Landroid/widget/ScrollView;

.field private text:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 41
    iput-object v0, p0, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialogBody;->text:Landroid/widget/TextView;

    .line 42
    iput-object v0, p0, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialogBody;->scroller:Landroid/widget/ScrollView;

    .line 43
    iput-object v0, p0, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialogBody;->button:Lcom/nativex/monetization/dialogs/custom/AdvancedButton;

    .line 44
    iput-object v0, p0, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialogBody;->scrollContainer:Landroid/widget/LinearLayout;

    .line 158
    new-instance v0, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialogBody$1;

    invoke-direct {v0, p0}, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialogBody$1;-><init>(Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialogBody;)V

    iput-object v0, p0, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialogBody;->onCalendarEntryClick:Landroid/view/View$OnClickListener;

    .line 52
    invoke-direct {p0}, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialogBody;->init()V

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialogBody;)Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog$OnCalendarEntryClicked;
    .locals 1
    .param p0, "x0"    # Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialogBody;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialogBody;->onCalendarClickedListener:Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog$OnCalendarEntryClicked;

    return-object v0
.end method

.method private addCalendarView(Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog$Calendar;)V
    .locals 6
    .param p1, "calendar"    # Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog$Calendar;

    .prologue
    const/16 v5, 0x50

    const/4 v4, 0x5

    .line 180
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 181
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v2, 0x3

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 182
    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 184
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialogBody;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 185
    .local v1, "textView":Landroid/widget/TextView;
    invoke-static {v5, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 186
    invoke-virtual {p1}, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog$Calendar;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    const/16 v2, 0x32

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 188
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 189
    sget-object v2, Lcom/nativex/monetization/theme/ThemeElementTypes;->MESSAGE_DIALOG_BODY_TEXT_COLOR:Lcom/nativex/monetization/theme/ThemeElementTypes;

    invoke-static {v2}, Lcom/nativex/monetization/theme/ThemeManager;->getColor(Lcom/nativex/monetization/theme/ThemeElementTypes;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 190
    const/high16 v2, 0x41a00000

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 191
    iget-object v2, p0, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialogBody;->onCalendarEntryClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 193
    iget-object v2, p0, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialogBody;->scrollContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 194
    return-void
.end method

.method private init()V
    .locals 11

    .prologue
    const/4 v5, 0x1

    const/high16 v10, 0x3f800000

    const/4 v9, -0x1

    const/4 v8, -0x2

    const/4 v7, 0x5

    .line 56
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialogBody;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialogBody;->scrollContainer:Landroid/widget/LinearLayout;

    .line 57
    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialogBody;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialogBody;->text:Landroid/widget/TextView;

    .line 58
    new-instance v3, Landroid/widget/ScrollView;

    invoke-virtual {p0}, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialogBody;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialogBody;->scroller:Landroid/widget/ScrollView;

    .line 59
    new-instance v3, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;

    invoke-virtual {p0}, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialogBody;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialogBody;->button:Lcom/nativex/monetization/dialogs/custom/AdvancedButton;

    .line 61
    iget-object v3, p0, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialogBody;->scrollContainer:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialogBody;->text:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 62
    iget-object v3, p0, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialogBody;->scroller:Landroid/widget/ScrollView;

    iget-object v4, p0, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialogBody;->scrollContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 63
    iget-object v3, p0, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialogBody;->scroller:Landroid/widget/ScrollView;

    invoke-virtual {p0, v3}, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialogBody;->addView(Landroid/view/View;)V

    .line 64
    iget-object v3, p0, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialogBody;->button:Lcom/nativex/monetization/dialogs/custom/AdvancedButton;

    invoke-virtual {p0, v3}, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialogBody;->addView(Landroid/view/View;)V

    .line 66
    iget-object v3, p0, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialogBody;->scrollContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 67
    invoke-virtual {p0, v5}, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialogBody;->setOrientation(I)V

    .line 68
    iget-object v3, p0, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialogBody;->text:Landroid/widget/TextView;

    const v4, 0x424a17

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setId(I)V

    .line 70
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v9, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 71
    .local v1, "scrollContainerParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v3, p0, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialogBody;->scrollContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v9, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 74
    .local v2, "textParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v3, p0, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialogBody;->text:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    iget-object v3, p0, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialogBody;->text:Landroid/widget/TextView;

    const/16 v4, 0xa

    invoke-virtual {v3, v7, v7, v7, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 76
    iget-object v3, p0, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialogBody;->text:Landroid/widget/TextView;

    const/high16 v4, 0x41800000

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 77
    iget-object v3, p0, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialogBody;->text:Landroid/widget/TextView;

    sget-object v4, Lcom/nativex/monetization/theme/ThemeElementTypes;->MESSAGE_DIALOG_BODY_TEXT_COLOR:Lcom/nativex/monetization/theme/ThemeElementTypes;

    invoke-static {v4}, Lcom/nativex/monetization/theme/ThemeManager;->getColor(Lcom/nativex/monetization/theme/ThemeElementTypes;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 78
    iget-object v3, p0, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialogBody;->text:Landroid/widget/TextView;

    const/4 v4, 0x0

    const/high16 v5, -0x40000000

    const/high16 v6, -0x1000000

    invoke-virtual {v3, v10, v4, v5, v6}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 79
    iget-object v3, p0, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialogBody;->text:Landroid/widget/TextView;

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 81
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v9, v8, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 82
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0, v7, v7, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 83
    iget-object v3, p0, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialogBody;->scroller:Landroid/widget/ScrollView;

    invoke-virtual {v3, v0}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    iget-object v3, p0, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialogBody;->scroller:Landroid/widget/ScrollView;

    sget-object v4, Lcom/nativex/monetization/theme/ThemeElementTypes;->MESSAGE_DIALOG_BODY_BACKGROUND:Lcom/nativex/monetization/theme/ThemeElementTypes;

    invoke-static {v3, v4}, Lcom/nativex/monetization/theme/ThemeManager;->setViewBackground(Landroid/view/View;Lcom/nativex/monetization/theme/ThemeElementTypes;)V

    .line 86
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .end local v0    # "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v0, v9, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 87
    .restart local v0    # "params":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v3, 0x46

    const/16 v4, 0x46

    invoke-virtual {v0, v3, v7, v4, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 89
    iget-object v3, p0, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialogBody;->button:Lcom/nativex/monetization/dialogs/custom/AdvancedButton;

    sget-object v4, Lcom/nativex/monetization/theme/ThemeElementTypes;->MESSAGE_DIALOG_OK_BUTTON_BACKGROUND_PRESSED:Lcom/nativex/monetization/theme/ThemeElementTypes;

    invoke-static {v4}, Lcom/nativex/monetization/theme/ThemeManager;->getDrawable(Lcom/nativex/monetization/theme/ThemeElementTypes;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->setBackgroundPressedDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 90
    iget-object v3, p0, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialogBody;->button:Lcom/nativex/monetization/dialogs/custom/AdvancedButton;

    sget-object v4, Lcom/nativex/monetization/theme/ThemeElementTypes;->MESSAGE_DIALOG_OK_BUTTON_BACKGROUND_NORMAL:Lcom/nativex/monetization/theme/ThemeElementTypes;

    invoke-static {v4}, Lcom/nativex/monetization/theme/ThemeManager;->getDrawable(Lcom/nativex/monetization/theme/ThemeElementTypes;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->setBackgroundDepressedDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 91
    iget-object v3, p0, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialogBody;->button:Lcom/nativex/monetization/dialogs/custom/AdvancedButton;

    sget-object v4, Lcom/nativex/monetization/theme/ThemeElementTypes;->MESSAGE_DIALOG_OK_BUTTON_TEXT_COLOR:Lcom/nativex/monetization/theme/ThemeElementTypes;

    invoke-static {v4}, Lcom/nativex/monetization/theme/ThemeManager;->getColor(Lcom/nativex/monetization/theme/ThemeElementTypes;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->setPressedTextColor(I)V

    .line 92
    iget-object v3, p0, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialogBody;->button:Lcom/nativex/monetization/dialogs/custom/AdvancedButton;

    sget-object v4, Lcom/nativex/monetization/theme/ThemeElementTypes;->MESSAGE_DIALOG_OK_BUTTON_TEXT_COLOR:Lcom/nativex/monetization/theme/ThemeElementTypes;

    invoke-static {v4}, Lcom/nativex/monetization/theme/ThemeManager;->getColor(Lcom/nativex/monetization/theme/ThemeElementTypes;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->setDepressedTextColor(I)V

    .line 93
    iget-object v3, p0, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialogBody;->button:Lcom/nativex/monetization/dialogs/custom/AdvancedButton;

    sget-object v4, Lcom/nativex/monetization/theme/ThemeElementTypes;->MESSAGE_DIALOG_OK_BUTTON_TEXT_COLOR:Lcom/nativex/monetization/theme/ThemeElementTypes;

    invoke-static {v4}, Lcom/nativex/monetization/theme/ThemeManager;->getColor(Lcom/nativex/monetization/theme/ThemeElementTypes;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->setFocusedTextColor(I)V

    .line 94
    iget-object v3, p0, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialogBody;->button:Lcom/nativex/monetization/dialogs/custom/AdvancedButton;

    invoke-virtual {v3, v0}, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    iget-object v3, p0, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialogBody;->button:Lcom/nativex/monetization/dialogs/custom/AdvancedButton;

    const v4, 0x424a19

    invoke-virtual {v3, v4}, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->setId(I)V

    .line 96
    return-void
.end method


# virtual methods
.method public addCalendars(Ljava/util/List;)V
    .locals 3
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
    .line 173
    .local p1, "calendars":Ljava/util/List;, "Ljava/util/List<Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog$Calendar;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog$Calendar;

    .line 174
    .local v0, "calendar":Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog$Calendar;
    invoke-direct {p0, v0}, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialogBody;->addCalendarView(Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog$Calendar;)V

    goto :goto_0

    .line 176
    .end local v0    # "calendar":Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog$Calendar;
    :cond_0
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 139
    iget-object v0, p0, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialogBody;->scroller:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialogBody;->scroller:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 141
    iget-object v0, p0, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialogBody;->scroller:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->removeAllViews()V

    .line 142
    iput-object v1, p0, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialogBody;->scroller:Landroid/widget/ScrollView;

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialogBody;->button:Lcom/nativex/monetization/dialogs/custom/AdvancedButton;

    if-eqz v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialogBody;->button:Lcom/nativex/monetization/dialogs/custom/AdvancedButton;

    invoke-virtual {v0}, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->release()V

    .line 146
    iput-object v1, p0, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialogBody;->button:Lcom/nativex/monetization/dialogs/custom/AdvancedButton;

    .line 148
    :cond_1
    invoke-virtual {p0}, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialogBody;->removeAllViews()V

    .line 149
    return-void
.end method

.method public setButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialogBody;->button:Lcom/nativex/monetization/dialogs/custom/AdvancedButton;

    invoke-virtual {v0, p1}, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    return-void
.end method

.method public setButtonText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialogBody;->button:Lcom/nativex/monetization/dialogs/custom/AdvancedButton;

    invoke-virtual {v0, p1}, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->setText(Ljava/lang/CharSequence;)V

    .line 131
    return-void
.end method

.method public setOnCalendarClickedListner(Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog$OnCalendarEntryClicked;)V
    .locals 0
    .param p1, "listener"    # Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog$OnCalendarEntryClicked;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialogBody;->onCalendarClickedListener:Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog$OnCalendarEntryClicked;

    .line 156
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 101
    :try_start_0
    iget-object v1, p0, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialogBody;->text:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :goto_0
    return-void

    .line 102
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 103
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MessageDialogBody: Unexpected exception caught in setText()"

    invoke-static {v1}, Lcom/nativex/common/Log;->e(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setTextColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 121
    :try_start_0
    iget-object v1, p0, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialogBody;->text:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :goto_0
    return-void

    .line 122
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 123
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MessageDialogBody: Unexpected exception caught in setTextColor()"

    invoke-static {v1}, Lcom/nativex/common/Log;->e(Ljava/lang/String;)V

    .line 124
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setTextSize(I)V
    .locals 3
    .param p1, "textSize"    # I

    .prologue
    .line 111
    :try_start_0
    iget-object v1, p0, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialogBody;->text:Landroid/widget/TextView;

    int-to-float v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :goto_0
    return-void

    .line 112
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 113
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MessageDialogBody: Unexpected exception caught in setTextSize()"

    invoke-static {v1}, Lcom/nativex/common/Log;->e(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
