.class Lcom/google/common/collect/ImmutableMultiset$FieldSettersHolder;
.super Ljava/lang/Object;
.source "ImmutableMultiset.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtIncompatible;
    value = "java serialization is not supported."
.end annotation


# static fields
.field static final a:Lcom/google/common/collect/Serialization$FieldSetter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Serialization$FieldSetter",
            "<",
            "Lcom/google/common/collect/ImmutableMultiset;",
            ">;"
        }
    .end annotation
.end field

.field static final b:Lcom/google/common/collect/Serialization$FieldSetter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Serialization$FieldSetter",
            "<",
            "Lcom/google/common/collect/ImmutableMultiset;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 252
    const-class v0, Lcom/google/common/collect/ImmutableMultiset;

    const-string v1, "map"

    invoke-static {v0, v1}, Lcom/google/common/collect/Serialization;->a(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/common/collect/Serialization$FieldSetter;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/ImmutableMultiset$FieldSettersHolder;->a:Lcom/google/common/collect/Serialization$FieldSetter;

    .line 254
    const-class v0, Lcom/google/common/collect/ImmutableMultiset;

    const-string v1, "size"

    invoke-static {v0, v1}, Lcom/google/common/collect/Serialization;->a(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/common/collect/Serialization$FieldSetter;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/ImmutableMultiset$FieldSettersHolder;->b:Lcom/google/common/collect/Serialization$FieldSetter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
