.class public Lam/sunrise/android/calendar/ui/settings/b/c;
.super Ljava/lang/Object;
.source "PreferenceCategory.java"


# instance fields
.field private a:I

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lam/sunrise/android/calendar/ui/settings/b/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/settings/b/c;->b:Ljava/util/ArrayList;

    .line 44
    return-void
.end method

.method public static a(I)Lam/sunrise/android/calendar/ui/settings/b/c;
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lam/sunrise/android/calendar/ui/settings/b/c;

    invoke-direct {v0}, Lam/sunrise/android/calendar/ui/settings/b/c;-><init>()V

    .line 20
    iput p0, v0, Lam/sunrise/android/calendar/ui/settings/b/c;->a:I

    .line 21
    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lam/sunrise/android/calendar/ui/settings/b/c;->a:I

    return v0
.end method

.method public a(Lam/sunrise/android/calendar/ui/settings/b/f;)Lam/sunrise/android/calendar/ui/settings/b/c;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/b/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    return-object p0
.end method

.method public a(Ljava/util/ArrayList;)Lam/sunrise/android/calendar/ui/settings/b/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lam/sunrise/android/calendar/ui/settings/b/f;",
            ">;)",
            "Lam/sunrise/android/calendar/ui/settings/b/c;"
        }
    .end annotation

    .prologue
    .line 34
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/settings/b/c;->b:Ljava/util/ArrayList;

    .line 35
    return-object p0
.end method

.method public b()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lam/sunrise/android/calendar/ui/settings/b/f;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/b/c;->b:Ljava/util/ArrayList;

    return-object v0
.end method
