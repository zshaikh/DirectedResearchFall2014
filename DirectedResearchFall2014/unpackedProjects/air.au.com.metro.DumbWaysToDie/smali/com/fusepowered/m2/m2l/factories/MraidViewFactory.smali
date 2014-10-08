.class public Lcom/fusepowered/m2/m2l/factories/MraidViewFactory;
.super Ljava/lang/Object;
.source "MraidViewFactory.java"


# static fields
.field protected static instance:Lcom/fusepowered/m2/m2l/factories/MraidViewFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/fusepowered/m2/m2l/factories/MraidViewFactory;

    invoke-direct {v0}, Lcom/fusepowered/m2/m2l/factories/MraidViewFactory;-><init>()V

    sput-object v0, Lcom/fusepowered/m2/m2l/factories/MraidViewFactory;->instance:Lcom/fusepowered/m2/m2l/factories/MraidViewFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;Lcom/fusepowered/m2/m2l/AdConfiguration;)Lcom/fusepowered/m2/m2l/MraidView;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "adConfiguration"    # Lcom/fusepowered/m2/m2l/AdConfiguration;

    .prologue
    .line 49
    sget-object v0, Lcom/fusepowered/m2/m2l/factories/MraidViewFactory;->instance:Lcom/fusepowered/m2/m2l/factories/MraidViewFactory;

    invoke-virtual {v0, p0, p1}, Lcom/fusepowered/m2/m2l/factories/MraidViewFactory;->internalCreate(Landroid/content/Context;Lcom/fusepowered/m2/m2l/AdConfiguration;)Lcom/fusepowered/m2/m2l/MraidView;

    move-result-object v0

    return-object v0
.end method

.method public static create(Landroid/content/Context;Lcom/fusepowered/m2/m2l/AdConfiguration;Lcom/fusepowered/m2/m2l/MraidView$ExpansionStyle;Lcom/fusepowered/m2/m2l/MraidView$NativeCloseButtonStyle;Lcom/fusepowered/m2/m2l/MraidView$PlacementType;)Lcom/fusepowered/m2/m2l/MraidView;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "adConfiguration"    # Lcom/fusepowered/m2/m2l/AdConfiguration;
    .param p2, "expansionStyle"    # Lcom/fusepowered/m2/m2l/MraidView$ExpansionStyle;
    .param p3, "buttonStyle"    # Lcom/fusepowered/m2/m2l/MraidView$NativeCloseButtonStyle;
    .param p4, "placementType"    # Lcom/fusepowered/m2/m2l/MraidView$PlacementType;

    .prologue
    .line 58
    sget-object v0, Lcom/fusepowered/m2/m2l/factories/MraidViewFactory;->instance:Lcom/fusepowered/m2/m2l/factories/MraidViewFactory;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/fusepowered/m2/m2l/factories/MraidViewFactory;->internalCreate(Landroid/content/Context;Lcom/fusepowered/m2/m2l/AdConfiguration;Lcom/fusepowered/m2/m2l/MraidView$ExpansionStyle;Lcom/fusepowered/m2/m2l/MraidView$NativeCloseButtonStyle;Lcom/fusepowered/m2/m2l/MraidView$PlacementType;)Lcom/fusepowered/m2/m2l/MraidView;

    move-result-object v0

    return-object v0
.end method

.method public static setInstance(Lcom/fusepowered/m2/m2l/factories/MraidViewFactory;)V
    .locals 0
    .param p0, "factory"    # Lcom/fusepowered/m2/m2l/factories/MraidViewFactory;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 45
    sput-object p0, Lcom/fusepowered/m2/m2l/factories/MraidViewFactory;->instance:Lcom/fusepowered/m2/m2l/factories/MraidViewFactory;

    .line 46
    return-void
.end method


# virtual methods
.method protected internalCreate(Landroid/content/Context;Lcom/fusepowered/m2/m2l/AdConfiguration;)Lcom/fusepowered/m2/m2l/MraidView;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adConfiguration"    # Lcom/fusepowered/m2/m2l/AdConfiguration;

    .prologue
    .line 62
    new-instance v0, Lcom/fusepowered/m2/m2l/MraidView;

    invoke-direct {v0, p1, p2}, Lcom/fusepowered/m2/m2l/MraidView;-><init>(Landroid/content/Context;Lcom/fusepowered/m2/m2l/AdConfiguration;)V

    return-object v0
.end method

.method protected internalCreate(Landroid/content/Context;Lcom/fusepowered/m2/m2l/AdConfiguration;Lcom/fusepowered/m2/m2l/MraidView$ExpansionStyle;Lcom/fusepowered/m2/m2l/MraidView$NativeCloseButtonStyle;Lcom/fusepowered/m2/m2l/MraidView$PlacementType;)Lcom/fusepowered/m2/m2l/MraidView;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adConfiguration"    # Lcom/fusepowered/m2/m2l/AdConfiguration;
    .param p3, "expansionStyle"    # Lcom/fusepowered/m2/m2l/MraidView$ExpansionStyle;
    .param p4, "buttonStyle"    # Lcom/fusepowered/m2/m2l/MraidView$NativeCloseButtonStyle;
    .param p5, "placementType"    # Lcom/fusepowered/m2/m2l/MraidView$PlacementType;

    .prologue
    .line 71
    new-instance v0, Lcom/fusepowered/m2/m2l/MraidView;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/fusepowered/m2/m2l/MraidView;-><init>(Landroid/content/Context;Lcom/fusepowered/m2/m2l/AdConfiguration;Lcom/fusepowered/m2/m2l/MraidView$ExpansionStyle;Lcom/fusepowered/m2/m2l/MraidView$NativeCloseButtonStyle;Lcom/fusepowered/m2/m2l/MraidView$PlacementType;)V

    return-object v0
.end method
