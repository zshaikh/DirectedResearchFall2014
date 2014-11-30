.class public Lcom/fusepowered/m2/m2l/factories/ViewGestureDetectorFactory;
.super Ljava/lang/Object;
.source "ViewGestureDetectorFactory.java"


# static fields
.field protected static instance:Lcom/fusepowered/m2/m2l/factories/ViewGestureDetectorFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    new-instance v0, Lcom/fusepowered/m2/m2l/factories/ViewGestureDetectorFactory;

    invoke-direct {v0}, Lcom/fusepowered/m2/m2l/factories/ViewGestureDetectorFactory;-><init>()V

    sput-object v0, Lcom/fusepowered/m2/m2l/factories/ViewGestureDetectorFactory;->instance:Lcom/fusepowered/m2/m2l/factories/ViewGestureDetectorFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;Landroid/view/View;Lcom/fusepowered/m2/m2l/AdConfiguration;)Lcom/fusepowered/m2/m2l/ViewGestureDetector;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "adConfiguration"    # Lcom/fusepowered/m2/m2l/AdConfiguration;

    .prologue
    .line 18
    sget-object v0, Lcom/fusepowered/m2/m2l/factories/ViewGestureDetectorFactory;->instance:Lcom/fusepowered/m2/m2l/factories/ViewGestureDetectorFactory;

    invoke-virtual {v0, p0, p1, p2}, Lcom/fusepowered/m2/m2l/factories/ViewGestureDetectorFactory;->internalCreate(Landroid/content/Context;Landroid/view/View;Lcom/fusepowered/m2/m2l/AdConfiguration;)Lcom/fusepowered/m2/m2l/ViewGestureDetector;

    move-result-object v0

    return-object v0
.end method

.method public static setInstance(Lcom/fusepowered/m2/m2l/factories/ViewGestureDetectorFactory;)V
    .locals 0
    .param p0, "factory"    # Lcom/fusepowered/m2/m2l/factories/ViewGestureDetectorFactory;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 14
    sput-object p0, Lcom/fusepowered/m2/m2l/factories/ViewGestureDetectorFactory;->instance:Lcom/fusepowered/m2/m2l/factories/ViewGestureDetectorFactory;

    .line 15
    return-void
.end method


# virtual methods
.method protected internalCreate(Landroid/content/Context;Landroid/view/View;Lcom/fusepowered/m2/m2l/AdConfiguration;)Lcom/fusepowered/m2/m2l/ViewGestureDetector;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "adConfiguration"    # Lcom/fusepowered/m2/m2l/AdConfiguration;

    .prologue
    .line 22
    new-instance v0, Lcom/fusepowered/m2/m2l/ViewGestureDetector;

    invoke-direct {v0, p1, p2, p3}, Lcom/fusepowered/m2/m2l/ViewGestureDetector;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/fusepowered/m2/m2l/AdConfiguration;)V

    return-object v0
.end method
