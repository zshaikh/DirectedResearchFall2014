.class public Lcom/nativex/monetization/dialogs/custom/AdvancedButton;
.super Landroid/widget/Button;
.source "AdvancedButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nativex/monetization/dialogs/custom/AdvancedButton$ShadowLayerAttributes;,
        Lcom/nativex/monetization/dialogs/custom/AdvancedButton$STATE;
    }
.end annotation


# static fields
.field public static final MIN_HEIGHT:I = 0x3c


# instance fields
.field private buttonFocusListener:Landroid/view/View$OnFocusChangeListener;

.field private buttonTouchListener:Landroid/view/View$OnTouchListener;

.field private depressedBackground:Landroid/graphics/drawable/Drawable;

.field private depressedShadow:Lcom/nativex/monetization/dialogs/custom/AdvancedButton$ShadowLayerAttributes;

.field private depressedText:Ljava/lang/String;

.field private depressedTextColor:I

.field private depressedTextSize:F

.field private focusedBackground:Landroid/graphics/drawable/Drawable;

.field private focusedShadow:Lcom/nativex/monetization/dialogs/custom/AdvancedButton$ShadowLayerAttributes;

.field private focusedText:Ljava/lang/String;

.field private focusedTextColor:I

.field private focusedTextSize:F

.field private pressedBackground:Landroid/graphics/drawable/Drawable;

.field private pressedShadow:Lcom/nativex/monetization/dialogs/custom/AdvancedButton$ShadowLayerAttributes;

.field private pressedText:Ljava/lang/String;

.field private pressedTextColor:I

.field private pressedTextSize:F

.field private state:Lcom/nativex/monetization/dialogs/custom/AdvancedButton$STATE;

.field private userFocusListener:Landroid/view/View$OnFocusChangeListener;

.field private userTouchListener:Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v2, -0x1000000

    const/high16 v0, 0x41600000

    const/4 v1, 0x0

    .line 150
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 40
    iput v0, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->depressedTextSize:F

    .line 41
    iput v0, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->pressedTextSize:F

    .line 42
    iput v0, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->focusedTextSize:F

    .line 43
    iput v2, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->depressedTextColor:I

    .line 44
    iput v2, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->pressedTextColor:I

    .line 45
    iput v2, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->focusedTextColor:I

    .line 46
    iput-object v1, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->depressedText:Ljava/lang/String;

    .line 47
    iput-object v1, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->pressedText:Ljava/lang/String;

    .line 48
    iput-object v1, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->focusedText:Ljava/lang/String;

    .line 49
    iput-object v1, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->state:Lcom/nativex/monetization/dialogs/custom/AdvancedButton$STATE;

    .line 50
    new-instance v0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton$ShadowLayerAttributes;

    invoke-direct {v0, p0, v1}, Lcom/nativex/monetization/dialogs/custom/AdvancedButton$ShadowLayerAttributes;-><init>(Lcom/nativex/monetization/dialogs/custom/AdvancedButton;Lcom/nativex/monetization/dialogs/custom/AdvancedButton$1;)V

    iput-object v0, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->pressedShadow:Lcom/nativex/monetization/dialogs/custom/AdvancedButton$ShadowLayerAttributes;

    .line 51
    new-instance v0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton$ShadowLayerAttributes;

    invoke-direct {v0, p0, v1}, Lcom/nativex/monetization/dialogs/custom/AdvancedButton$ShadowLayerAttributes;-><init>(Lcom/nativex/monetization/dialogs/custom/AdvancedButton;Lcom/nativex/monetization/dialogs/custom/AdvancedButton$1;)V

    iput-object v0, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->depressedShadow:Lcom/nativex/monetization/dialogs/custom/AdvancedButton$ShadowLayerAttributes;

    .line 52
    new-instance v0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton$ShadowLayerAttributes;

    invoke-direct {v0, p0, v1}, Lcom/nativex/monetization/dialogs/custom/AdvancedButton$ShadowLayerAttributes;-><init>(Lcom/nativex/monetization/dialogs/custom/AdvancedButton;Lcom/nativex/monetization/dialogs/custom/AdvancedButton$1;)V

    iput-object v0, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->focusedShadow:Lcom/nativex/monetization/dialogs/custom/AdvancedButton$ShadowLayerAttributes;

    .line 61
    iput-object v1, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->userTouchListener:Landroid/view/View$OnTouchListener;

    .line 62
    iput-object v1, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->userFocusListener:Landroid/view/View$OnFocusChangeListener;

    .line 64
    new-instance v0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton$1;

    invoke-direct {v0, p0}, Lcom/nativex/monetization/dialogs/custom/AdvancedButton$1;-><init>(Lcom/nativex/monetization/dialogs/custom/AdvancedButton;)V

    iput-object v0, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->buttonTouchListener:Landroid/view/View$OnTouchListener;

    .line 86
    new-instance v0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton$2;

    invoke-direct {v0, p0}, Lcom/nativex/monetization/dialogs/custom/AdvancedButton$2;-><init>(Lcom/nativex/monetization/dialogs/custom/AdvancedButton;)V

    iput-object v0, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->buttonFocusListener:Landroid/view/View$OnFocusChangeListener;

    .line 151
    invoke-virtual {p0}, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->init()V

    .line 152
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/high16 v2, -0x1000000

    const/high16 v0, 0x41600000

    const/4 v1, 0x0

    .line 145
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    iput v0, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->depressedTextSize:F

    .line 41
    iput v0, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->pressedTextSize:F

    .line 42
    iput v0, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->focusedTextSize:F

    .line 43
    iput v2, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->depressedTextColor:I

    .line 44
    iput v2, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->pressedTextColor:I

    .line 45
    iput v2, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->focusedTextColor:I

    .line 46
    iput-object v1, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->depressedText:Ljava/lang/String;

    .line 47
    iput-object v1, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->pressedText:Ljava/lang/String;

    .line 48
    iput-object v1, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->focusedText:Ljava/lang/String;

    .line 49
    iput-object v1, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->state:Lcom/nativex/monetization/dialogs/custom/AdvancedButton$STATE;

    .line 50
    new-instance v0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton$ShadowLayerAttributes;

    invoke-direct {v0, p0, v1}, Lcom/nativex/monetization/dialogs/custom/AdvancedButton$ShadowLayerAttributes;-><init>(Lcom/nativex/monetization/dialogs/custom/AdvancedButton;Lcom/nativex/monetization/dialogs/custom/AdvancedButton$1;)V

    iput-object v0, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->pressedShadow:Lcom/nativex/monetization/dialogs/custom/AdvancedButton$ShadowLayerAttributes;

    .line 51
    new-instance v0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton$ShadowLayerAttributes;

    invoke-direct {v0, p0, v1}, Lcom/nativex/monetization/dialogs/custom/AdvancedButton$ShadowLayerAttributes;-><init>(Lcom/nativex/monetization/dialogs/custom/AdvancedButton;Lcom/nativex/monetization/dialogs/custom/AdvancedButton$1;)V

    iput-object v0, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->depressedShadow:Lcom/nativex/monetization/dialogs/custom/AdvancedButton$ShadowLayerAttributes;

    .line 52
    new-instance v0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton$ShadowLayerAttributes;

    invoke-direct {v0, p0, v1}, Lcom/nativex/monetization/dialogs/custom/AdvancedButton$ShadowLayerAttributes;-><init>(Lcom/nativex/monetization/dialogs/custom/AdvancedButton;Lcom/nativex/monetization/dialogs/custom/AdvancedButton$1;)V

    iput-object v0, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->focusedShadow:Lcom/nativex/monetization/dialogs/custom/AdvancedButton$ShadowLayerAttributes;

    .line 61
    iput-object v1, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->userTouchListener:Landroid/view/View$OnTouchListener;

    .line 62
    iput-object v1, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->userFocusListener:Landroid/view/View$OnFocusChangeListener;

    .line 64
    new-instance v0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton$1;

    invoke-direct {v0, p0}, Lcom/nativex/monetization/dialogs/custom/AdvancedButton$1;-><init>(Lcom/nativex/monetization/dialogs/custom/AdvancedButton;)V

    iput-object v0, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->buttonTouchListener:Landroid/view/View$OnTouchListener;

    .line 86
    new-instance v0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton$2;

    invoke-direct {v0, p0}, Lcom/nativex/monetization/dialogs/custom/AdvancedButton$2;-><init>(Lcom/nativex/monetization/dialogs/custom/AdvancedButton;)V

    iput-object v0, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->buttonFocusListener:Landroid/view/View$OnFocusChangeListener;

    .line 146
    invoke-virtual {p0}, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->init()V

    .line 147
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/high16 v2, -0x1000000

    const/high16 v0, 0x41600000

    const/4 v1, 0x0

    .line 140
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    iput v0, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->depressedTextSize:F

    .line 41
    iput v0, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->pressedTextSize:F

    .line 42
    iput v0, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->focusedTextSize:F

    .line 43
    iput v2, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->depressedTextColor:I

    .line 44
    iput v2, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->pressedTextColor:I

    .line 45
    iput v2, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->focusedTextColor:I

    .line 46
    iput-object v1, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->depressedText:Ljava/lang/String;

    .line 47
    iput-object v1, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->pressedText:Ljava/lang/String;

    .line 48
    iput-object v1, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->focusedText:Ljava/lang/String;

    .line 49
    iput-object v1, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->state:Lcom/nativex/monetization/dialogs/custom/AdvancedButton$STATE;

    .line 50
    new-instance v0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton$ShadowLayerAttributes;

    invoke-direct {v0, p0, v1}, Lcom/nativex/monetization/dialogs/custom/AdvancedButton$ShadowLayerAttributes;-><init>(Lcom/nativex/monetization/dialogs/custom/AdvancedButton;Lcom/nativex/monetization/dialogs/custom/AdvancedButton$1;)V

    iput-object v0, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->pressedShadow:Lcom/nativex/monetization/dialogs/custom/AdvancedButton$ShadowLayerAttributes;

    .line 51
    new-instance v0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton$ShadowLayerAttributes;

    invoke-direct {v0, p0, v1}, Lcom/nativex/monetization/dialogs/custom/AdvancedButton$ShadowLayerAttributes;-><init>(Lcom/nativex/monetization/dialogs/custom/AdvancedButton;Lcom/nativex/monetization/dialogs/custom/AdvancedButton$1;)V

    iput-object v0, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->depressedShadow:Lcom/nativex/monetization/dialogs/custom/AdvancedButton$ShadowLayerAttributes;

    .line 52
    new-instance v0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton$ShadowLayerAttributes;

    invoke-direct {v0, p0, v1}, Lcom/nativex/monetization/dialogs/custom/AdvancedButton$ShadowLayerAttributes;-><init>(Lcom/nativex/monetization/dialogs/custom/AdvancedButton;Lcom/nativex/monetization/dialogs/custom/AdvancedButton$1;)V

    iput-object v0, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->focusedShadow:Lcom/nativex/monetization/dialogs/custom/AdvancedButton$ShadowLayerAttributes;

    .line 61
    iput-object v1, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->userTouchListener:Landroid/view/View$OnTouchListener;

    .line 62
    iput-object v1, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->userFocusListener:Landroid/view/View$OnFocusChangeListener;

    .line 64
    new-instance v0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton$1;

    invoke-direct {v0, p0}, Lcom/nativex/monetization/dialogs/custom/AdvancedButton$1;-><init>(Lcom/nativex/monetization/dialogs/custom/AdvancedButton;)V

    iput-object v0, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->buttonTouchListener:Landroid/view/View$OnTouchListener;

    .line 86
    new-instance v0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton$2;

    invoke-direct {v0, p0}, Lcom/nativex/monetization/dialogs/custom/AdvancedButton$2;-><init>(Lcom/nativex/monetization/dialogs/custom/AdvancedButton;)V

    iput-object v0, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->buttonFocusListener:Landroid/view/View$OnFocusChangeListener;

    .line 141
    invoke-virtual {p0}, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->init()V

    .line 142
    return-void
.end method

.method static synthetic access$100(Lcom/nativex/monetization/dialogs/custom/AdvancedButton;)V
    .locals 0
    .param p0, "x0"    # Lcom/nativex/monetization/dialogs/custom/AdvancedButton;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->buttonPressed()V

    return-void
.end method

.method static synthetic access$200(Lcom/nativex/monetization/dialogs/custom/AdvancedButton;)V
    .locals 0
    .param p0, "x0"    # Lcom/nativex/monetization/dialogs/custom/AdvancedButton;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->buttonDepressed()V

    return-void
.end method

.method static synthetic access$300(Lcom/nativex/monetization/dialogs/custom/AdvancedButton;)Landroid/view/View$OnTouchListener;
    .locals 1
    .param p0, "x0"    # Lcom/nativex/monetization/dialogs/custom/AdvancedButton;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->userTouchListener:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/nativex/monetization/dialogs/custom/AdvancedButton;)Lcom/nativex/monetization/dialogs/custom/AdvancedButton$STATE;
    .locals 1
    .param p0, "x0"    # Lcom/nativex/monetization/dialogs/custom/AdvancedButton;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->state:Lcom/nativex/monetization/dialogs/custom/AdvancedButton$STATE;

    return-object v0
.end method

.method static synthetic access$500(Lcom/nativex/monetization/dialogs/custom/AdvancedButton;)Landroid/view/View$OnFocusChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/nativex/monetization/dialogs/custom/AdvancedButton;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->userFocusListener:Landroid/view/View$OnFocusChangeListener;

    return-object v0
.end method

.method private buttonDepressed()V
    .locals 4

    .prologue
    .line 114
    sget-object v0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton$STATE;->DEPRESSED:Lcom/nativex/monetization/dialogs/custom/AdvancedButton$STATE;

    iput-object v0, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->state:Lcom/nativex/monetization/dialogs/custom/AdvancedButton$STATE;

    .line 115
    invoke-virtual {p0}, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    invoke-direct {p0}, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->buttonFocused()V

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    iget-object v0, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->depressedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 120
    iget v0, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->depressedTextColor:I

    invoke-virtual {p0, v0}, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->setTextColor(I)V

    .line 121
    iget v0, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->depressedTextSize:F

    invoke-virtual {p0, v0}, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->setTextSize(F)V

    .line 122
    iget-object v0, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->depressedShadow:Lcom/nativex/monetization/dialogs/custom/AdvancedButton$ShadowLayerAttributes;

    iget v0, v0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton$ShadowLayerAttributes;->radius:F

    iget-object v1, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->depressedShadow:Lcom/nativex/monetization/dialogs/custom/AdvancedButton$ShadowLayerAttributes;

    iget v1, v1, Lcom/nativex/monetization/dialogs/custom/AdvancedButton$ShadowLayerAttributes;->dx:F

    iget-object v2, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->depressedShadow:Lcom/nativex/monetization/dialogs/custom/AdvancedButton$ShadowLayerAttributes;

    iget v2, v2, Lcom/nativex/monetization/dialogs/custom/AdvancedButton$ShadowLayerAttributes;->dy:F

    iget-object v3, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->depressedShadow:Lcom/nativex/monetization/dialogs/custom/AdvancedButton$ShadowLayerAttributes;

    iget v3, v3, Lcom/nativex/monetization/dialogs/custom/AdvancedButton$ShadowLayerAttributes;->color:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->setShadowLayer(FFFI)V

    .line 123
    iget-object v0, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->depressedText:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->depressedText:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private buttonFocused()V
    .locals 4

    .prologue
    .line 130
    iget-object v0, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->focusedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 131
    iget v0, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->focusedTextColor:I

    invoke-virtual {p0, v0}, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->setTextColor(I)V

    .line 132
    iget v0, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->focusedTextSize:F

    invoke-virtual {p0, v0}, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->setTextSize(F)V

    .line 133
    iget-object v0, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->focusedShadow:Lcom/nativex/monetization/dialogs/custom/AdvancedButton$ShadowLayerAttributes;

    iget v0, v0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton$ShadowLayerAttributes;->radius:F

    iget-object v1, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->focusedShadow:Lcom/nativex/monetization/dialogs/custom/AdvancedButton$ShadowLayerAttributes;

    iget v1, v1, Lcom/nativex/monetization/dialogs/custom/AdvancedButton$ShadowLayerAttributes;->dx:F

    iget-object v2, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->focusedShadow:Lcom/nativex/monetization/dialogs/custom/AdvancedButton$ShadowLayerAttributes;

    iget v2, v2, Lcom/nativex/monetization/dialogs/custom/AdvancedButton$ShadowLayerAttributes;->dy:F

    iget-object v3, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->focusedShadow:Lcom/nativex/monetization/dialogs/custom/AdvancedButton$ShadowLayerAttributes;

    iget v3, v3, Lcom/nativex/monetization/dialogs/custom/AdvancedButton$ShadowLayerAttributes;->color:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->setShadowLayer(FFFI)V

    .line 134
    iget-object v0, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->focusedText:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->focusedText:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->setText(Ljava/lang/CharSequence;)V

    .line 137
    :cond_0
    return-void
.end method

.method private buttonPressed()V
    .locals 4

    .prologue
    .line 102
    sget-object v0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton$STATE;->PRESSED:Lcom/nativex/monetization/dialogs/custom/AdvancedButton$STATE;

    iput-object v0, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->state:Lcom/nativex/monetization/dialogs/custom/AdvancedButton$STATE;

    .line 103
    iget-object v0, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->pressedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 104
    iget v0, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->pressedTextColor:I

    invoke-virtual {p0, v0}, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->setTextColor(I)V

    .line 105
    iget v0, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->pressedTextSize:F

    invoke-virtual {p0, v0}, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->setTextSize(F)V

    .line 106
    iget-object v0, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->pressedShadow:Lcom/nativex/monetization/dialogs/custom/AdvancedButton$ShadowLayerAttributes;

    iget v0, v0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton$ShadowLayerAttributes;->radius:F

    iget-object v1, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->pressedShadow:Lcom/nativex/monetization/dialogs/custom/AdvancedButton$ShadowLayerAttributes;

    iget v1, v1, Lcom/nativex/monetization/dialogs/custom/AdvancedButton$ShadowLayerAttributes;->dx:F

    iget-object v2, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->pressedShadow:Lcom/nativex/monetization/dialogs/custom/AdvancedButton$ShadowLayerAttributes;

    iget v2, v2, Lcom/nativex/monetization/dialogs/custom/AdvancedButton$ShadowLayerAttributes;->dy:F

    iget-object v3, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->pressedShadow:Lcom/nativex/monetization/dialogs/custom/AdvancedButton$ShadowLayerAttributes;

    iget v3, v3, Lcom/nativex/monetization/dialogs/custom/AdvancedButton$ShadowLayerAttributes;->color:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->setShadowLayer(FFFI)V

    .line 108
    iget-object v0, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->pressedText:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->pressedText:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->setText(Ljava/lang/CharSequence;)V

    .line 111
    :cond_0
    return-void
.end method


# virtual methods
.method public init()V
    .locals 4

    .prologue
    const-string v3, "cta_dialog_button.9.png"

    .line 155
    new-instance v0, Lcom/nativex/monetization/manager/ImageService;

    invoke-direct {v0}, Lcom/nativex/monetization/manager/ImageService;-><init>()V

    invoke-virtual {p0}, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "cta_dialog_button.9.png"

    invoke-virtual {v0, v1, v3}, Lcom/nativex/monetization/manager/ImageService;->loadDrawableFromAssets(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->depressedBackground:Landroid/graphics/drawable/Drawable;

    .line 156
    new-instance v0, Lcom/nativex/monetization/manager/ImageService;

    invoke-direct {v0}, Lcom/nativex/monetization/manager/ImageService;-><init>()V

    invoke-virtual {p0}, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "cta_dialog_button_down.9.png"

    invoke-virtual {v0, v1, v2}, Lcom/nativex/monetization/manager/ImageService;->loadDrawableFromAssets(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->pressedBackground:Landroid/graphics/drawable/Drawable;

    .line 157
    new-instance v0, Lcom/nativex/monetization/manager/ImageService;

    invoke-direct {v0}, Lcom/nativex/monetization/manager/ImageService;-><init>()V

    invoke-virtual {p0}, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "cta_dialog_button.9.png"

    invoke-virtual {v0, v1, v3}, Lcom/nativex/monetization/manager/ImageService;->loadDrawableFromAssets(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->focusedBackground:Landroid/graphics/drawable/Drawable;

    .line 158
    iget-object v0, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->buttonTouchListener:Landroid/view/View$OnTouchListener;

    invoke-super {p0, v0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 159
    iget-object v0, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->buttonFocusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-super {p0, v0}, Landroid/widget/Button;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 160
    invoke-direct {p0}, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->buttonDepressed()V

    .line 161
    invoke-static {}, Lcom/nativex/monetization/ui/DeviceScreenSize;->getDeviceScreenSize()Lcom/nativex/monetization/ui/DeviceScreenSize$SCREEN_SIZE;

    move-result-object v0

    sget-object v1, Lcom/nativex/monetization/ui/DeviceScreenSize$SCREEN_SIZE;->SMALL:Lcom/nativex/monetization/ui/DeviceScreenSize$SCREEN_SIZE;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x42480000

    invoke-static {v0, v1}, Lcom/nativex/monetization/manager/DensityManager;->getDIP(Landroid/content/Context;F)I

    move-result v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->setMinHeight(I)V

    .line 162
    return-void

    .line 161
    :cond_0
    const/16 v0, 0x3c

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 177
    invoke-virtual {p0, v0}, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 178
    invoke-virtual {p0, v0}, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 179
    invoke-virtual {p0, v0}, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    invoke-virtual {p0, v0}, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->setText(Ljava/lang/CharSequence;)V

    .line 181
    iput-object v0, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->pressedBackground:Landroid/graphics/drawable/Drawable;

    .line 182
    iput-object v0, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->depressedBackground:Landroid/graphics/drawable/Drawable;

    .line 183
    iput-object v0, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->focusedBackground:Landroid/graphics/drawable/Drawable;

    .line 184
    return-void
.end method

.method public setBackgroundDepressedDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 196
    iput-object p1, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->focusedBackground:Landroid/graphics/drawable/Drawable;

    .line 197
    iput-object p1, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->depressedBackground:Landroid/graphics/drawable/Drawable;

    .line 198
    iget-object v0, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->state:Lcom/nativex/monetization/dialogs/custom/AdvancedButton$STATE;

    sget-object v1, Lcom/nativex/monetization/dialogs/custom/AdvancedButton$STATE;->DEPRESSED:Lcom/nativex/monetization/dialogs/custom/AdvancedButton$STATE;

    if-ne v0, v1, :cond_0

    .line 199
    invoke-virtual {p0, p1}, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 201
    :cond_0
    return-void
.end method

.method public setBackgroundPressedDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->pressedBackground:Landroid/graphics/drawable/Drawable;

    .line 189
    iget-object v0, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->state:Lcom/nativex/monetization/dialogs/custom/AdvancedButton$STATE;

    sget-object v1, Lcom/nativex/monetization/dialogs/custom/AdvancedButton$STATE;->PRESSED:Lcom/nativex/monetization/dialogs/custom/AdvancedButton$STATE;

    if-ne v0, v1, :cond_0

    .line 190
    invoke-virtual {p0, p1}, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 192
    :cond_0
    return-void
.end method

.method public setDepressedAttributes(Ljava/lang/String;IFLandroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "textColor"    # I
    .param p3, "textSize"    # F
    .param p4, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 222
    iput-object p1, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->depressedText:Ljava/lang/String;

    .line 223
    iput p2, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->depressedTextColor:I

    .line 224
    iput p3, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->depressedTextSize:F

    .line 225
    iput-object p4, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->depressedBackground:Landroid/graphics/drawable/Drawable;

    .line 226
    iget-object v0, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->state:Lcom/nativex/monetization/dialogs/custom/AdvancedButton$STATE;

    sget-object v1, Lcom/nativex/monetization/dialogs/custom/AdvancedButton$STATE;->DEPRESSED:Lcom/nativex/monetization/dialogs/custom/AdvancedButton$STATE;

    if-ne v0, v1, :cond_0

    .line 227
    invoke-direct {p0}, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->buttonDepressed()V

    .line 229
    :cond_0
    return-void
.end method

.method public setDepressedShadowLayer(FFFI)V
    .locals 2
    .param p1, "radius"    # F
    .param p2, "dx"    # F
    .param p3, "dy"    # F
    .param p4, "color"    # I

    .prologue
    .line 295
    iget-object v0, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->depressedShadow:Lcom/nativex/monetization/dialogs/custom/AdvancedButton$ShadowLayerAttributes;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/nativex/monetization/dialogs/custom/AdvancedButton$ShadowLayerAttributes;->setAttributes(FFFI)V

    .line 296
    iget-object v0, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->state:Lcom/nativex/monetization/dialogs/custom/AdvancedButton$STATE;

    sget-object v1, Lcom/nativex/monetization/dialogs/custom/AdvancedButton$STATE;->DEPRESSED:Lcom/nativex/monetization/dialogs/custom/AdvancedButton$STATE;

    if-ne v0, v1, :cond_0

    .line 297
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->setShadowLayer(FFFI)V

    .line 299
    :cond_0
    return-void
.end method

.method public setDepressedText(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 233
    iput-object p1, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->depressedText:Ljava/lang/String;

    .line 234
    iget-object v0, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->state:Lcom/nativex/monetization/dialogs/custom/AdvancedButton$STATE;

    sget-object v1, Lcom/nativex/monetization/dialogs/custom/AdvancedButton$STATE;->DEPRESSED:Lcom/nativex/monetization/dialogs/custom/AdvancedButton$STATE;

    if-ne v0, v1, :cond_0

    .line 235
    invoke-virtual {p0, p1}, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->setText(Ljava/lang/CharSequence;)V

    .line 237
    :cond_0
    return-void
.end method

.method public setDepressedTextColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 241
    iput p1, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->depressedTextColor:I

    .line 242
    iget-object v0, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->state:Lcom/nativex/monetization/dialogs/custom/AdvancedButton$STATE;

    sget-object v1, Lcom/nativex/monetization/dialogs/custom/AdvancedButton$STATE;->DEPRESSED:Lcom/nativex/monetization/dialogs/custom/AdvancedButton$STATE;

    if-ne v0, v1, :cond_0

    .line 243
    invoke-virtual {p0, p1}, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->setTextColor(I)V

    .line 245
    :cond_0
    return-void
.end method

.method public setDepressedTextSize(F)V
    .locals 2
    .param p1, "size"    # F

    .prologue
    .line 249
    iput p1, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->depressedTextSize:F

    .line 250
    iget-object v0, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->state:Lcom/nativex/monetization/dialogs/custom/AdvancedButton$STATE;

    sget-object v1, Lcom/nativex/monetization/dialogs/custom/AdvancedButton$STATE;->DEPRESSED:Lcom/nativex/monetization/dialogs/custom/AdvancedButton$STATE;

    if-ne v0, v1, :cond_0

    .line 251
    invoke-virtual {p0, p1}, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->setTextSize(F)V

    .line 253
    :cond_0
    return-void
.end method

.method public setFocusedAttributes(Ljava/lang/String;IFLandroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "textColor"    # I
    .param p3, "textSize"    # F
    .param p4, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 317
    iput-object p1, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->focusedText:Ljava/lang/String;

    .line 318
    iput p2, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->focusedTextColor:I

    .line 319
    iput p3, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->focusedTextSize:F

    .line 320
    iput-object p4, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->focusedBackground:Landroid/graphics/drawable/Drawable;

    .line 321
    invoke-virtual {p0}, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    invoke-direct {p0}, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->buttonFocused()V

    .line 324
    :cond_0
    return-void
.end method

.method public setFocusedShadowLayer(FFFI)V
    .locals 2
    .param p1, "radius"    # F
    .param p2, "dx"    # F
    .param p3, "dy"    # F
    .param p4, "color"    # I

    .prologue
    .line 306
    iget-object v0, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->focusedShadow:Lcom/nativex/monetization/dialogs/custom/AdvancedButton$ShadowLayerAttributes;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/nativex/monetization/dialogs/custom/AdvancedButton$ShadowLayerAttributes;->setAttributes(FFFI)V

    .line 307
    iget-object v0, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->state:Lcom/nativex/monetization/dialogs/custom/AdvancedButton$STATE;

    sget-object v1, Lcom/nativex/monetization/dialogs/custom/AdvancedButton$STATE;->DEPRESSED:Lcom/nativex/monetization/dialogs/custom/AdvancedButton$STATE;

    if-ne v0, v1, :cond_0

    .line 308
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->setShadowLayer(FFFI)V

    .line 310
    :cond_0
    return-void
.end method

.method public setFocusedText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 328
    iput-object p1, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->focusedText:Ljava/lang/String;

    .line 329
    invoke-virtual {p0}, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    invoke-virtual {p0, p1}, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->setText(Ljava/lang/CharSequence;)V

    .line 332
    :cond_0
    return-void
.end method

.method public setFocusedTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 336
    iput p1, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->focusedTextColor:I

    .line 337
    invoke-virtual {p0}, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    invoke-virtual {p0, p1}, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->setTextColor(I)V

    .line 340
    :cond_0
    return-void
.end method

.method public setFocusedTextSize(F)V
    .locals 1
    .param p1, "size"    # F

    .prologue
    .line 344
    iput p1, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->focusedTextSize:F

    .line 345
    invoke-virtual {p0}, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    invoke-virtual {p0, p1}, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->setTextSize(F)V

    .line 348
    :cond_0
    return-void
.end method

.method public setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 0
    .param p1, "l"    # Landroid/view/View$OnFocusChangeListener;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->userFocusListener:Landroid/view/View$OnFocusChangeListener;

    .line 174
    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0
    .param p1, "l"    # Landroid/view/View$OnTouchListener;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->userTouchListener:Landroid/view/View$OnTouchListener;

    .line 168
    return-void
.end method

.method public setPressedAttributes(Ljava/lang/String;IFLandroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "textColor"    # I
    .param p3, "textSize"    # F
    .param p4, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 208
    iput-object p1, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->pressedText:Ljava/lang/String;

    .line 209
    iput p2, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->pressedTextColor:I

    .line 210
    iput p3, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->pressedTextSize:F

    .line 211
    iput-object p4, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->pressedBackground:Landroid/graphics/drawable/Drawable;

    .line 212
    iget-object v0, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->state:Lcom/nativex/monetization/dialogs/custom/AdvancedButton$STATE;

    sget-object v1, Lcom/nativex/monetization/dialogs/custom/AdvancedButton$STATE;->PRESSED:Lcom/nativex/monetization/dialogs/custom/AdvancedButton$STATE;

    if-ne v0, v1, :cond_0

    .line 213
    invoke-direct {p0}, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->buttonPressed()V

    .line 215
    :cond_0
    return-void
.end method

.method public setPressedShadowLayer(FFFI)V
    .locals 2
    .param p1, "radius"    # F
    .param p2, "dx"    # F
    .param p3, "dy"    # F
    .param p4, "color"    # I

    .prologue
    .line 284
    iget-object v0, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->pressedShadow:Lcom/nativex/monetization/dialogs/custom/AdvancedButton$ShadowLayerAttributes;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/nativex/monetization/dialogs/custom/AdvancedButton$ShadowLayerAttributes;->setAttributes(FFFI)V

    .line 285
    iget-object v0, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->state:Lcom/nativex/monetization/dialogs/custom/AdvancedButton$STATE;

    sget-object v1, Lcom/nativex/monetization/dialogs/custom/AdvancedButton$STATE;->PRESSED:Lcom/nativex/monetization/dialogs/custom/AdvancedButton$STATE;

    if-ne v0, v1, :cond_0

    .line 286
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->setShadowLayer(FFFI)V

    .line 288
    :cond_0
    return-void
.end method

.method public setPressedText(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 265
    iput-object p1, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->pressedText:Ljava/lang/String;

    .line 266
    iget-object v0, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->state:Lcom/nativex/monetization/dialogs/custom/AdvancedButton$STATE;

    sget-object v1, Lcom/nativex/monetization/dialogs/custom/AdvancedButton$STATE;->PRESSED:Lcom/nativex/monetization/dialogs/custom/AdvancedButton$STATE;

    if-ne v0, v1, :cond_0

    .line 267
    invoke-virtual {p0, p1}, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->setText(Ljava/lang/CharSequence;)V

    .line 269
    :cond_0
    return-void
.end method

.method public setPressedTextColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 273
    iput p1, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->pressedTextColor:I

    .line 274
    iget-object v0, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->state:Lcom/nativex/monetization/dialogs/custom/AdvancedButton$STATE;

    sget-object v1, Lcom/nativex/monetization/dialogs/custom/AdvancedButton$STATE;->PRESSED:Lcom/nativex/monetization/dialogs/custom/AdvancedButton$STATE;

    if-ne v0, v1, :cond_0

    .line 275
    invoke-virtual {p0, p1}, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->setTextColor(I)V

    .line 277
    :cond_0
    return-void
.end method

.method public setPressedTextSize(F)V
    .locals 2
    .param p1, "size"    # F

    .prologue
    .line 257
    iput p1, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->pressedTextSize:F

    .line 258
    iget-object v0, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->state:Lcom/nativex/monetization/dialogs/custom/AdvancedButton$STATE;

    sget-object v1, Lcom/nativex/monetization/dialogs/custom/AdvancedButton$STATE;->PRESSED:Lcom/nativex/monetization/dialogs/custom/AdvancedButton$STATE;

    if-ne v0, v1, :cond_0

    .line 259
    invoke-virtual {p0, p1}, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->setTextSize(F)V

    .line 261
    :cond_0
    return-void
.end method
