.class final Lcom/google/android/gms/internal/w;
.super Landroid/graphics/drawable/Drawable;


# static fields
.field private static final a:Lcom/google/android/gms/internal/w;

.field private static final b:Lcom/google/android/gms/internal/x;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/w;

    invoke-direct {v0}, Lcom/google/android/gms/internal/w;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/w;->a:Lcom/google/android/gms/internal/w;

    new-instance v0, Lcom/google/android/gms/internal/x;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/x;-><init>(Lcom/google/android/gms/internal/v;)V

    sput-object v0, Lcom/google/android/gms/internal/w;->b:Lcom/google/android/gms/internal/x;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/google/android/gms/internal/w;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/w;->a:Lcom/google/android/gms/internal/w;

    return-object v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/w;->b:Lcom/google/android/gms/internal/x;

    return-object v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
