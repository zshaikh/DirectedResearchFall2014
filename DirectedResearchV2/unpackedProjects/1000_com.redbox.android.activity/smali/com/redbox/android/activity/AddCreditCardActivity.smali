.class public Lcom/redbox/android/activity/AddCreditCardActivity;
.super Lcom/redbox/android/activity/RBBaseActivity;
.source "AddCreditCardActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/redbox/android/activity/AddCreditCardActivity$customAdapter;
    }
.end annotation


# static fields
.field public static final CARD_ARRAYLIST:Ljava/lang/String; = "cards.arraylist"

.field public static final CARD_CHANGED:Ljava/lang/String; = "card.changed"

.field public static final CARD_ID:Ljava/lang/String; = "card.index"

.field public static final CARD_TO_SHOW:Ljava/lang/String; = "cards.index"

.field public static final CREDIT_CARD_REQUEST_CODE:I = 0x5

.field public static final NEW_CARD:Ljava/lang/String; = "new.card"


# instance fields
.field private final ADD_MODE:I

.field private final EDIT_MODE:I

.field private final VIEW_MODE:I

.field private btnAddCard:Landroid/widget/ImageButton;

.field private btnEditCard:Landroid/widget/ImageButton;

.field cardAliasSpinner:Landroid/widget/Spinner;

.field private cardsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/redbox/android/model/Card;",
            ">;"
        }
    .end annotation
.end field

.field monthSpinner:Landroid/widget/Spinner;

.field private screenMode:I

.field private selectedIndex:I

.field private txtBillingZip:Landroid/widget/EditText;

.field private txtCardAlias:Landroid/widget/EditText;

.field private txtCardNumber:Landroid/widget/EditText;

.field private txtNameOnCard:Landroid/widget/EditText;

.field yearSpinner:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 39
    invoke-direct {p0}, Lcom/redbox/android/activity/RBBaseActivity;-><init>()V

    .line 48
    iput v1, p0, Lcom/redbox/android/activity/AddCreditCardActivity;->VIEW_MODE:I

    .line 49
    const/4 v0, 0x2

    iput v0, p0, Lcom/redbox/android/activity/AddCreditCardActivity;->EDIT_MODE:I

    .line 50
    const/4 v0, 0x3

    iput v0, p0, Lcom/redbox/android/activity/AddCreditCardActivity;->ADD_MODE:I

    .line 52
    iput v1, p0, Lcom/redbox/android/activity/AddCreditCardActivity;->screenMode:I

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/redbox/android/activity/AddCreditCardActivity;->selectedIndex:I

    .line 39
    return-void
.end method

.method static synthetic access$0(Lcom/redbox/android/activity/AddCreditCardActivity;)Z
    .locals 1

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/redbox/android/activity/AddCreditCardActivity;->isInViewMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1(Lcom/redbox/android/activity/AddCreditCardActivity;I)V
    .locals 0

    .prologue
    .line 52
    iput p1, p0, Lcom/redbox/android/activity/AddCreditCardActivity;->screenMode:I

    return-void
.end method

.method static synthetic access$10(Lcom/redbox/android/activity/AddCreditCardActivity;)I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/redbox/android/activity/AddCreditCardActivity;->selectedIndex:I

    return v0
.end method

.method static synthetic access$11(Lcom/redbox/android/activity/AddCreditCardActivity;)Z
    .locals 1

    .prologue
    .line 166
    invoke-direct {p0}, Lcom/redbox/android/activity/AddCreditCardActivity;->isInAddMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$12(Lcom/redbox/android/activity/AddCreditCardActivity;I)V
    .locals 0

    .prologue
    .line 66
    iput p1, p0, Lcom/redbox/android/activity/AddCreditCardActivity;->selectedIndex:I

    return-void
.end method

.method static synthetic access$13(Lcom/redbox/android/activity/AddCreditCardActivity;)V
    .locals 0

    .prologue
    .line 594
    invoke-direct {p0}, Lcom/redbox/android/activity/AddCreditCardActivity;->updateUI()V

    return-void
.end method

.method static synthetic access$2(Lcom/redbox/android/activity/AddCreditCardActivity;)I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/redbox/android/activity/AddCreditCardActivity;->screenMode:I

    return v0
.end method

.method static synthetic access$3(Lcom/redbox/android/activity/AddCreditCardActivity;I)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/redbox/android/activity/AddCreditCardActivity;->setScreenMode(I)V

    return-void
.end method

.method static synthetic access$4(Lcom/redbox/android/activity/AddCreditCardActivity;)Z
    .locals 1

    .prologue
    .line 170
    invoke-direct {p0}, Lcom/redbox/android/activity/AddCreditCardActivity;->isInEditMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5(Lcom/redbox/android/activity/AddCreditCardActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/redbox/android/activity/AddCreditCardActivity;->txtCardAlias:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$6(Lcom/redbox/android/activity/AddCreditCardActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/redbox/android/activity/AddCreditCardActivity;->txtCardNumber:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$7(Lcom/redbox/android/activity/AddCreditCardActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/redbox/android/activity/AddCreditCardActivity;->txtNameOnCard:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$8(Lcom/redbox/android/activity/AddCreditCardActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/redbox/android/activity/AddCreditCardActivity;->txtBillingZip:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$9(Lcom/redbox/android/activity/AddCreditCardActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/redbox/android/activity/AddCreditCardActivity;->cardsList:Ljava/util/ArrayList;

    return-object v0
.end method

.method private isInAddMode()Z
    .locals 2

    .prologue
    .line 167
    iget v0, p0, Lcom/redbox/android/activity/AddCreditCardActivity;->screenMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isInEditMode()Z
    .locals 2

    .prologue
    .line 171
    iget v0, p0, Lcom/redbox/android/activity/AddCreditCardActivity;->screenMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isInViewMode()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 175
    iget v0, p0, Lcom/redbox/android/activity/AddCreditCardActivity;->screenMode:I

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setScreenMode(I)V
    .locals 7
    .param p1, "sm"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/high16 v4, -0x1000000

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 76
    iget-object v0, p0, Lcom/redbox/android/activity/AddCreditCardActivity;->btnEditCard:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 77
    iget-object v0, p0, Lcom/redbox/android/activity/AddCreditCardActivity;->cardAliasSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 78
    iget-object v0, p0, Lcom/redbox/android/activity/AddCreditCardActivity;->btnAddCard:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 79
    iget-object v0, p0, Lcom/redbox/android/activity/AddCreditCardActivity;->txtCardNumber:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 80
    iget-object v0, p0, Lcom/redbox/android/activity/AddCreditCardActivity;->txtCardNumber:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 81
    iget-object v0, p0, Lcom/redbox/android/activity/AddCreditCardActivity;->txtCardNumber:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 82
    iget-object v0, p0, Lcom/redbox/android/activity/AddCreditCardActivity;->txtNameOnCard:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 83
    iget-object v0, p0, Lcom/redbox/android/activity/AddCreditCardActivity;->txtNameOnCard:Landroid/widget/EditText;

    const-string v1, "#8b8378"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 84
    iget-object v0, p0, Lcom/redbox/android/activity/AddCreditCardActivity;->txtNameOnCard:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 85
    iget-object v0, p0, Lcom/redbox/android/activity/AddCreditCardActivity;->txtNameOnCard:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 86
    iget-object v0, p0, Lcom/redbox/android/activity/AddCreditCardActivity;->txtCardAlias:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 87
    iget-object v0, p0, Lcom/redbox/android/activity/AddCreditCardActivity;->txtCardAlias:Landroid/widget/EditText;

    const-string v1, "#8b8378"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 88
    iget-object v0, p0, Lcom/redbox/android/activity/AddCreditCardActivity;->txtCardAlias:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 89
    iget-object v0, p0, Lcom/redbox/android/activity/AddCreditCardActivity;->txtCardAlias:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 90
    iget-object v0, p0, Lcom/redbox/android/activity/AddCreditCardActivity;->txtBillingZip:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 91
    iget-object v0, p0, Lcom/redbox/android/activity/AddCreditCardActivity;->txtBillingZip:Landroid/widget/EditText;

    const-string v1, "#8b8378"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 92
    iget-object v0, p0, Lcom/redbox/android/activity/AddCreditCardActivity;->txtBillingZip:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 93
    iget-object v0, p0, Lcom/redbox/android/activity/AddCreditCardActivity;->txtBillingZip:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 94
    iget-object v0, p0, Lcom/redbox/android/activity/AddCreditCardActivity;->monthSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 95
    iget-object v0, p0, Lcom/redbox/android/activity/AddCreditCardActivity;->yearSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 99
    packed-switch p1, :pswitch_data_0

    .line 164
    :goto_0
    return-void

    .line 101
    :pswitch_0
    iget-object v0, p0, Lcom/redbox/android/activity/AddCreditCardActivity;->btnEditCard:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 102
    iget-object v0, p0, Lcom/redbox/android/activity/AddCreditCardActivity;->btnAddCard:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 103
    iget-object v0, p0, Lcom/redbox/android/activity/AddCreditCardActivity;->txtCardNumber:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setTextColor(I)V

    goto :goto_0

    .line 106
    :pswitch_1
    iget-object v0, p0, Lcom/redbox/android/activity/AddCreditCardActivity;->btnEditCard:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 107
    iget-object v0, p0, Lcom/redbox/android/activity/AddCreditCardActivity;->cardAliasSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 108
    iget-object v0, p0, Lcom/redbox/android/activity/AddCreditCardActivity;->cardAliasSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 109
    iget-object v0, p0, Lcom/redbox/android/activity/AddCreditCardActivity;->btnEditCard:Landroid/widget/ImageButton;

    const v1, 0x7f020014

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 110
    iget-object v0, p0, Lcom/redbox/android/activity/AddCreditCardActivity;->cardAliasSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 111
    iget-object v0, p0, Lcom/redbox/android/activity/AddCreditCardActivity;->txtCardNumber:Landroid/widget/EditText;

    const-string v1, "#8b8378"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 112
    iget-object v0, p0, Lcom/redbox/android/activity/AddCreditCardActivity;->txtNameOnCard:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 113
    iget-object v0, p0, Lcom/redbox/android/activity/AddCreditCardActivity;->txtNameOnCard:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setTextColor(I)V

    .line 114
    iget-object v0, p0, Lcom/redbox/android/activity/AddCreditCardActivity;->txtNameOnCard:Landroid/widget/EditText;

    .line 115
    const/16 v1, 0x60

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 116
    iget-object v0, p0, Lcom/redbox/android/activity/AddCreditCardActivity;->txtNameOnCard:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 118
    iget-object v0, p0, Lcom/redbox/android/activity/AddCreditCardActivity;->txtCardAlias:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 119
    iget-object v0, p0, Lcom/redbox/android/activity/AddCreditCardActivity;->txtCardAlias:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setTextColor(I)V

    .line 120
    iget-object v0, p0, Lcom/redbox/android/activity/AddCreditCardActivity;->txtCardAlias:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 121
    iget-object v0, p0, Lcom/redbox/android/activity/AddCreditCardActivity;->txtCardAlias:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 122
    iget-object v0, p0, Lcom/redbox/android/activity/AddCreditCardActivity;->txtBillingZip:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 123
    iget-object v0, p0, Lcom/redbox/android/activity/AddCreditCardActivity;->txtBillingZip:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setTextColor(I)V

    .line 124
    iget-object v0, p0, Lcom/redbox/android/activity/AddCreditCardActivity;->txtBillingZip:Landroid/widget/EditText;

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setInputType(I)V

    .line 125
    iget-object v0, p0, Lcom/redbox/android/activity/AddCreditCardActivity;->txtBillingZip:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 126
    iget-object v0, p0, Lcom/redbox/android/activity/AddCreditCardActivity;->monthSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 127
    iget-object v0, p0, Lcom/redbox/android/activity/AddCreditCardActivity;->yearSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setEnabled(Z)V

    goto :goto_0

    .line 131
    :pswitch_2
    iget-object v0, p0, Lcom/redbox/android/activity/AddCreditCardActivity;->cardAliasSpinner:Landroid/widget/Spinner;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 132
    iget-object v0, p0, Lcom/redbox/android/activity/AddCreditCardActivity;->btnEditCard:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 133
    iget-object v0, p0, Lcom/redbox/android/activity/AddCreditCardActivity;->btnEditCard:Landroid/widget/ImageButton;

    const v1, 0x7f020014

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 134
    iget-object v0, p0, Lcom/redbox/android/activity/AddCreditCardActivity;->txtCardNumber:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 135
    iget-object v0, p0, Lcom/redbox/android/activity/AddCreditCardActivity;->txtCardNumber:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setTextColor(I)V

    .line 136
    iget-object v0, p0, Lcom/redbox/android/activity/AddCreditCardActivity;->txtCardNumber:Landroid/widget/EditText;

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setInputType(I)V

    .line 137
    iget-object v0, p0, Lcom/redbox/android/activity/AddCreditCardActivity;->txtCardNumber:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 138
    iget-object v0, p0, Lcom/redbox/android/activity/AddCreditCardActivity;->txtNameOnCard:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 139
    iget-object v0, p0, Lcom/redbox/android/activity/AddCreditCardActivity;->txtNameOnCard:Landroid/widget/EditText;

    .line 140
    const/16 v1, 0x60

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 141
    iget-object v0, p0, Lcom/redbox/android/activity/AddCreditCardActivity;->txtNameOnCard:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 142
    iget-object v0, p0, Lcom/redbox/android/activity/AddCreditCardActivity;->txtCardAlias:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 143
    iget-object v0, p0, Lcom/redbox/android/activity/AddCreditCardActivity;->txtCardAlias:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 144
    iget-object v0, p0, Lcom/redbox/android/activity/AddCreditCardActivity;->txtCardAlias:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 145
    iget-object v0, p0, Lcom/redbox/android/activity/AddCreditCardActivity;->txtBillingZip:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 146
    iget-object v0, p0, Lcom/redbox/android/activity/AddCreditCardActivity;->txtBillingZip:Landroid/widget/EditText;

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setInputType(I)V

    .line 147
    iget-object v0, p0, Lcom/redbox/android/activity/AddCreditCardActivity;->txtBillingZip:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 148
    iget-object v0, p0, Lcom/redbox/android/activity/AddCreditCardActivity;->monthSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 149
    iget-object v0, p0, Lcom/redbox/android/activity/AddCreditCardActivity;->yearSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 156
    iget-object v0, p0, Lcom/redbox/android/activity/AddCreditCardActivity;->txtCardNumber:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 157
    iget-object v0, p0, Lcom/redbox/android/activity/AddCreditCardActivity;->txtNameOnCard:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 158
    iget-object v0, p0, Lcom/redbox/android/activity/AddCreditCardActivity;->txtCardAlias:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 159
    iget-object v0, p0, Lcom/redbox/android/activity/AddCreditCardActivity;->txtBillingZip:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 160
    iget-object v0, p0, Lcom/redbox/android/activity/AddCreditCardActivity;->monthSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 161
    iget-object v0, p0, Lcom/redbox/android/activity/AddCreditCardActivity;->yearSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_0

    .line 99
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateUI()V
    .locals 8

    .prologue
    .line 597
    :try_start_0
    iget-object v5, p0, Lcom/redbox/android/activity/AddCreditCardActivity;->cardsList:Ljava/util/ArrayList;

    iget v6, p0, Lcom/redbox/android/activity/AddCreditCardActivity;->selectedIndex:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/redbox/android/model/Card;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 601
    .local v0, "card":Lcom/redbox/android/model/Card;
    iget-object v5, p0, Lcom/redbox/android/activity/AddCreditCardActivity;->txtCardNumber:Landroid/widget/EditText;

    if-eqz v5, :cond_0

    .line 602
    iget-object v5, p0, Lcom/redbox/android/activity/AddCreditCardActivity;->txtCardNumber:Landroid/widget/EditText;

    invoke-virtual {v0}, Lcom/redbox/android/model/Card;->getCardNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 605
    :cond_0
    iget-object v5, p0, Lcom/redbox/android/activity/AddCreditCardActivity;->txtCardAlias:Landroid/widget/EditText;

    if-eqz v5, :cond_1

    .line 606
    iget-object v5, p0, Lcom/redbox/android/activity/AddCreditCardActivity;->txtCardAlias:Landroid/widget/EditText;

    invoke-virtual {v0}, Lcom/redbox/android/model/Card;->getAlias()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 609
    :cond_1
    iget-object v5, p0, Lcom/redbox/android/activity/AddCreditCardActivity;->txtNameOnCard:Landroid/widget/EditText;

    if-eqz v5, :cond_2

    .line 610
    iget-object v5, p0, Lcom/redbox/android/activity/AddCreditCardActivity;->txtNameOnCard:Landroid/widget/EditText;

    invoke-virtual {v0}, Lcom/redbox/android/model/Card;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 613
    :cond_2
    iget-object v5, p0, Lcom/redbox/android/activity/AddCreditCardActivity;->txtBillingZip:Landroid/widget/EditText;

    if-eqz v5, :cond_3

    .line 614
    iget-object v5, p0, Lcom/redbox/android/activity/AddCreditCardActivity;->txtBillingZip:Landroid/widget/EditText;

    invoke-virtual {v0}, Lcom/redbox/android/model/Card;->getZip()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 617
    :cond_3
    iget-object v5, p0, Lcom/redbox/android/activity/AddCreditCardActivity;->monthSpinner:Landroid/widget/Spinner;

    if-eqz v5, :cond_4

    .line 618
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Expiry month"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/redbox/android/model/Card;->getExpMonth()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 619
    iget-object v5, p0, Lcom/redbox/android/activity/AddCreditCardActivity;->monthSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Lcom/redbox/android/model/Card;->getExpMonth()Ljava/lang/String;

    move-result-object v6

    .line 620
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 619
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 620
    const/4 v7, 0x1

    sub-int/2addr v6, v7

    .line 619
    invoke-virtual {v5, v6}, Landroid/widget/Spinner;->setSelection(I)V

    .line 623
    :cond_4
    iget-object v5, p0, Lcom/redbox/android/activity/AddCreditCardActivity;->yearSpinner:Landroid/widget/Spinner;

    if-eqz v5, :cond_5

    .line 624
    iget-object v5, p0, Lcom/redbox/android/activity/AddCreditCardActivity;->yearSpinner:Landroid/widget/Spinner;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/Spinner;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 625
    .local v4, "year":Ljava/lang/Integer;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Current year :"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 627
    invoke-virtual {v0}, Lcom/redbox/android/model/Card;->getExpYear()Ljava/lang/String;

    move-result-object v1

    .line 628
    .local v1, "cardExpiryYear":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Card expiry :"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 630
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 631
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 630
    sub-int v3, v5, v6

    .line 632
    .local v3, "index":I
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Index :"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 634
    iget-object v5, p0, Lcom/redbox/android/activity/AddCreditCardActivity;->yearSpinner:Landroid/widget/Spinner;

    if-eqz v5, :cond_5

    .line 635
    iget-object v5, p0, Lcom/redbox/android/activity/AddCreditCardActivity;->yearSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 638
    .end local v0    # "card":Lcom/redbox/android/model/Card;
    .end local v1    # "cardExpiryYear":Ljava/lang/String;
    .end local v3    # "index":I
    .end local v4    # "year":Ljava/lang/Integer;
    :cond_5
    :goto_0
    return-void

    .line 598
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 599
    .local v2, "e":Ljava/lang/Exception;
    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v10, 0x7f030003

    const v9, 0x1090009

    .line 180
    invoke-super {p0, p1}, Lcom/redbox/android/activity/RBBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 182
    const/high16 v6, 0x7f030000

    invoke-virtual {p0, v6}, Lcom/redbox/android/activity/AddCreditCardActivity;->setContentView(I)V

    .line 184
    const v6, 0x7f070008

    invoke-virtual {p0, v6}, Lcom/redbox/android/activity/AddCreditCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/redbox/android/activity/AddCreditCardActivity;->txtCardNumber:Landroid/widget/EditText;

    .line 185
    const v6, 0x7f070009

    invoke-virtual {p0, v6}, Lcom/redbox/android/activity/AddCreditCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/redbox/android/activity/AddCreditCardActivity;->txtNameOnCard:Landroid/widget/EditText;

    .line 186
    const v6, 0x7f07000a

    invoke-virtual {p0, v6}, Lcom/redbox/android/activity/AddCreditCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/redbox/android/activity/AddCreditCardActivity;->txtCardAlias:Landroid/widget/EditText;

    .line 187
    const v6, 0x7f07000b

    invoke-virtual {p0, v6}, Lcom/redbox/android/activity/AddCreditCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/redbox/android/activity/AddCreditCardActivity;->txtBillingZip:Landroid/widget/EditText;

    .line 188
    const v6, 0x7f070007

    invoke-virtual {p0, v6}, Lcom/redbox/android/activity/AddCreditCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    iput-object v6, p0, Lcom/redbox/android/activity/AddCreditCardActivity;->btnAddCard:Landroid/widget/ImageButton;

    .line 189
    const v6, 0x7f070003

    invoke-virtual {p0, v6}, Lcom/redbox/android/activity/AddCreditCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    iput-object v6, p0, Lcom/redbox/android/activity/AddCreditCardActivity;->btnEditCard:Landroid/widget/ImageButton;

    .line 191
    const v6, 0x7f070006

    invoke-virtual {p0, v6}, Lcom/redbox/android/activity/AddCreditCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Spinner;

    iput-object v6, p0, Lcom/redbox/android/activity/AddCreditCardActivity;->cardAliasSpinner:Landroid/widget/Spinner;

    .line 192
    const v6, 0x7f07000c

    invoke-virtual {p0, v6}, Lcom/redbox/android/activity/AddCreditCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Spinner;

    iput-object v6, p0, Lcom/redbox/android/activity/AddCreditCardActivity;->monthSpinner:Landroid/widget/Spinner;

    .line 193
    const v6, 0x7f07000d

    invoke-virtual {p0, v6}, Lcom/redbox/android/activity/AddCreditCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Spinner;

    iput-object v6, p0, Lcom/redbox/android/activity/AddCreditCardActivity;->yearSpinner:Landroid/widget/Spinner;

    .line 195
    iget-object v6, p0, Lcom/redbox/android/activity/AddCreditCardActivity;->btnEditCard:Landroid/widget/ImageButton;

    new-instance v7, Lcom/redbox/android/activity/AddCreditCardActivity$1;

    invoke-direct {v7, p0}, Lcom/redbox/android/activity/AddCreditCardActivity$1;-><init>(Lcom/redbox/android/activity/AddCreditCardActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 521
    iget-object v6, p0, Lcom/redbox/android/activity/AddCreditCardActivity;->btnAddCard:Landroid/widget/ImageButton;

    new-instance v7, Lcom/redbox/android/activity/AddCreditCardActivity$2;

    invoke-direct {v7, p0}, Lcom/redbox/android/activity/AddCreditCardActivity$2;-><init>(Lcom/redbox/android/activity/AddCreditCardActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 532
    iget-object v6, p0, Lcom/redbox/android/activity/AddCreditCardActivity;->cardAliasSpinner:Landroid/widget/Spinner;

    .line 533
    new-instance v7, Lcom/redbox/android/activity/AddCreditCardActivity$3;

    invoke-direct {v7, p0}, Lcom/redbox/android/activity/AddCreditCardActivity$3;-><init>(Lcom/redbox/android/activity/AddCreditCardActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 551
    invoke-virtual {p0}, Lcom/redbox/android/activity/AddCreditCardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "cards.index"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/redbox/android/activity/AddCreditCardActivity;->selectedIndex:I

    .line 552
    iget v6, p0, Lcom/redbox/android/activity/AddCreditCardActivity;->selectedIndex:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    .line 554
    invoke-virtual {p0}, Lcom/redbox/android/activity/AddCreditCardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 555
    const-string v7, "cards.arraylist"

    .line 554
    invoke-virtual {v6, v7}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    iput-object v6, p0, Lcom/redbox/android/activity/AddCreditCardActivity;->cardsList:Ljava/util/ArrayList;

    .line 556
    new-instance v1, Lcom/redbox/android/activity/AddCreditCardActivity$customAdapter;

    .line 557
    iget-object v6, p0, Lcom/redbox/android/activity/AddCreditCardActivity;->cardsList:Ljava/util/ArrayList;

    .line 556
    invoke-direct {v1, p0, p0, v6}, Lcom/redbox/android/activity/AddCreditCardActivity$customAdapter;-><init>(Lcom/redbox/android/activity/AddCreditCardActivity;Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 560
    .local v1, "creditCardSpinnerAdapter":Lcom/redbox/android/activity/AddCreditCardActivity$customAdapter;
    iget-object v6, p0, Lcom/redbox/android/activity/AddCreditCardActivity;->cardAliasSpinner:Landroid/widget/Spinner;

    invoke-virtual {v6, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 564
    iget-object v6, p0, Lcom/redbox/android/activity/AddCreditCardActivity;->cardAliasSpinner:Landroid/widget/Spinner;

    iget v7, p0, Lcom/redbox/android/activity/AddCreditCardActivity;->selectedIndex:I

    invoke-virtual {v6, v7}, Landroid/widget/Spinner;->setSelection(I)V

    .line 573
    .end local v1    # "creditCardSpinnerAdapter":Lcom/redbox/android/activity/AddCreditCardActivity$customAdapter;
    :goto_0
    const v6, 0x7f060001

    invoke-static {p0, v6, v10}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v3

    .line 576
    .local v3, "monthAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    invoke-virtual {v3, v9}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 577
    iget-object v6, p0, Lcom/redbox/android/activity/AddCreditCardActivity;->monthSpinner:Landroid/widget/Spinner;

    invoke-virtual {v6, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 579
    new-instance v5, Landroid/widget/ArrayAdapter;

    invoke-direct {v5, p0, v10}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 581
    .local v5, "yearAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/Integer;>;"
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 582
    .local v0, "cal":Ljava/util/Calendar;
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 583
    .local v4, "year":I
    rem-int/lit8 v4, v4, 0x64

    .line 584
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    const/16 v6, 0xa

    if-lt v2, v6, :cond_1

    .line 588
    invoke-virtual {v5, v9}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 589
    iget-object v6, p0, Lcom/redbox/android/activity/AddCreditCardActivity;->yearSpinner:Landroid/widget/Spinner;

    invoke-virtual {v6, v5}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 590
    iget v6, p0, Lcom/redbox/android/activity/AddCreditCardActivity;->screenMode:I

    invoke-direct {p0, v6}, Lcom/redbox/android/activity/AddCreditCardActivity;->setScreenMode(I)V

    .line 591
    invoke-direct {p0}, Lcom/redbox/android/activity/AddCreditCardActivity;->updateUI()V

    .line 592
    return-void

    .line 569
    .end local v0    # "cal":Ljava/util/Calendar;
    .end local v2    # "i":I
    .end local v3    # "monthAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    .end local v4    # "year":I
    .end local v5    # "yearAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/Integer;>;"
    :cond_0
    const/4 v6, 0x3

    iput v6, p0, Lcom/redbox/android/activity/AddCreditCardActivity;->screenMode:I

    goto :goto_0

    .line 585
    .restart local v0    # "cal":Ljava/util/Calendar;
    .restart local v2    # "i":I
    .restart local v3    # "monthAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    .restart local v4    # "year":I
    .restart local v5    # "yearAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/Integer;>;"
    :cond_1
    new-instance v6, Ljava/lang/Integer;

    add-int v7, v4, v2

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5, v6}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 584
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 70
    invoke-super {p0}, Lcom/redbox/android/activity/RBBaseActivity;->onResume()V

    .line 73
    return-void
.end method
