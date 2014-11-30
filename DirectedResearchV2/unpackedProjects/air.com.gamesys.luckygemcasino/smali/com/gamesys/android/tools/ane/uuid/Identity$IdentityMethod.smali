.class final enum Lcom/gamesys/android/tools/ane/uuid/Identity$IdentityMethod;
.super Ljava/lang/Enum;
.source "Identity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gamesys/android/tools/ane/uuid/Identity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "IdentityMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/gamesys/android/tools/ane/uuid/Identity$IdentityMethod;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ANDROID_ID:Lcom/gamesys/android/tools/ane/uuid/Identity$IdentityMethod;

.field private static final synthetic ENUM$VALUES:[Lcom/gamesys/android/tools/ane/uuid/Identity$IdentityMethod;

.field public static final enum SELF_GENERATED_UUID:Lcom/gamesys/android/tools/ane/uuid/Identity$IdentityMethod;


# instance fields
.field public final function:Lcom/gamesys/android/tools/ane/uuid/Identity$IGeneratedStringValue;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 168
    new-instance v0, Lcom/gamesys/android/tools/ane/uuid/Identity$IdentityMethod;

    const-string v1, "SELF_GENERATED_UUID"

    .line 169
    new-instance v2, Lcom/gamesys/android/tools/ane/uuid/Identity$IdentityMethod$1;

    invoke-direct {v2}, Lcom/gamesys/android/tools/ane/uuid/Identity$IdentityMethod$1;-><init>()V

    invoke-direct {v0, v1, v3, v2}, Lcom/gamesys/android/tools/ane/uuid/Identity$IdentityMethod;-><init>(Ljava/lang/String;ILcom/gamesys/android/tools/ane/uuid/Identity$IGeneratedStringValue;)V

    sput-object v0, Lcom/gamesys/android/tools/ane/uuid/Identity$IdentityMethod;->SELF_GENERATED_UUID:Lcom/gamesys/android/tools/ane/uuid/Identity$IdentityMethod;

    .line 177
    new-instance v0, Lcom/gamesys/android/tools/ane/uuid/Identity$IdentityMethod;

    const-string v1, "ANDROID_ID"

    .line 178
    new-instance v2, Lcom/gamesys/android/tools/ane/uuid/Identity$IdentityMethod$2;

    invoke-direct {v2}, Lcom/gamesys/android/tools/ane/uuid/Identity$IdentityMethod$2;-><init>()V

    invoke-direct {v0, v1, v4, v2}, Lcom/gamesys/android/tools/ane/uuid/Identity$IdentityMethod;-><init>(Ljava/lang/String;ILcom/gamesys/android/tools/ane/uuid/Identity$IGeneratedStringValue;)V

    sput-object v0, Lcom/gamesys/android/tools/ane/uuid/Identity$IdentityMethod;->ANDROID_ID:Lcom/gamesys/android/tools/ane/uuid/Identity$IdentityMethod;

    .line 167
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/gamesys/android/tools/ane/uuid/Identity$IdentityMethod;

    sget-object v1, Lcom/gamesys/android/tools/ane/uuid/Identity$IdentityMethod;->SELF_GENERATED_UUID:Lcom/gamesys/android/tools/ane/uuid/Identity$IdentityMethod;

    aput-object v1, v0, v3

    sget-object v1, Lcom/gamesys/android/tools/ane/uuid/Identity$IdentityMethod;->ANDROID_ID:Lcom/gamesys/android/tools/ane/uuid/Identity$IdentityMethod;

    aput-object v1, v0, v4

    sput-object v0, Lcom/gamesys/android/tools/ane/uuid/Identity$IdentityMethod;->ENUM$VALUES:[Lcom/gamesys/android/tools/ane/uuid/Identity$IdentityMethod;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/gamesys/android/tools/ane/uuid/Identity$IGeneratedStringValue;)V
    .locals 0
    .param p3, "fct"    # Lcom/gamesys/android/tools/ane/uuid/Identity$IGeneratedStringValue;

    .prologue
    .line 207
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 208
    iput-object p3, p0, Lcom/gamesys/android/tools/ane/uuid/Identity$IdentityMethod;->function:Lcom/gamesys/android/tools/ane/uuid/Identity$IGeneratedStringValue;

    .line 209
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gamesys/android/tools/ane/uuid/Identity$IdentityMethod;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/gamesys/android/tools/ane/uuid/Identity$IdentityMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/gamesys/android/tools/ane/uuid/Identity$IdentityMethod;

    return-object v0
.end method

.method public static values()[Lcom/gamesys/android/tools/ane/uuid/Identity$IdentityMethod;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/gamesys/android/tools/ane/uuid/Identity$IdentityMethod;->ENUM$VALUES:[Lcom/gamesys/android/tools/ane/uuid/Identity$IdentityMethod;

    array-length v1, v0

    new-array v2, v1, [Lcom/gamesys/android/tools/ane/uuid/Identity$IdentityMethod;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
