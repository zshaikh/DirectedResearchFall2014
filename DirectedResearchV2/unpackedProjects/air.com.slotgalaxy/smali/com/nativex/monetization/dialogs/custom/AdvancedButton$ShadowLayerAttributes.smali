.class Lcom/nativex/monetization/dialogs/custom/AdvancedButton$ShadowLayerAttributes;
.super Ljava/lang/Object;
.source "AdvancedButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nativex/monetization/dialogs/custom/AdvancedButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShadowLayerAttributes"
.end annotation


# instance fields
.field color:I

.field dx:F

.field dy:F

.field radius:F

.field final synthetic this$0:Lcom/nativex/monetization/dialogs/custom/AdvancedButton;


# direct methods
.method private constructor <init>(Lcom/nativex/monetization/dialogs/custom/AdvancedButton;)V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000

    .line 350
    iput-object p1, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton$ShadowLayerAttributes;->this$0:Lcom/nativex/monetization/dialogs/custom/AdvancedButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 351
    iput v1, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton$ShadowLayerAttributes;->radius:F

    .line 352
    const/4 v0, 0x0

    iput v0, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton$ShadowLayerAttributes;->dx:F

    .line 353
    iput v1, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton$ShadowLayerAttributes;->dy:F

    .line 354
    const/4 v0, -0x1

    iput v0, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton$ShadowLayerAttributes;->color:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/nativex/monetization/dialogs/custom/AdvancedButton;Lcom/nativex/monetization/dialogs/custom/AdvancedButton$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/nativex/monetization/dialogs/custom/AdvancedButton;
    .param p2, "x1"    # Lcom/nativex/monetization/dialogs/custom/AdvancedButton$1;

    .prologue
    .line 350
    invoke-direct {p0, p1}, Lcom/nativex/monetization/dialogs/custom/AdvancedButton$ShadowLayerAttributes;-><init>(Lcom/nativex/monetization/dialogs/custom/AdvancedButton;)V

    return-void
.end method


# virtual methods
.method public setAttributes(FFFI)V
    .locals 0
    .param p1, "radius"    # F
    .param p2, "dx"    # F
    .param p3, "dy"    # F
    .param p4, "color"    # I

    .prologue
    .line 361
    iput p1, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton$ShadowLayerAttributes;->radius:F

    .line 362
    iput p2, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton$ShadowLayerAttributes;->dx:F

    .line 363
    iput p3, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton$ShadowLayerAttributes;->dy:F

    .line 364
    iput p4, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton$ShadowLayerAttributes;->color:I

    .line 365
    return-void
.end method
