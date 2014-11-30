.class public Lcom/pocketchange/android/util/BundleUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static putObject(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 12
    if-nez p2, :cond_0

    .line 13
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 85
    .end local p2    # "value":Ljava/lang/Object;
    :goto_0
    return-void

    .line 14
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 15
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 16
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v0, p2, [Z

    if-eqz v0, :cond_2

    .line 17
    check-cast p2, [Z

    .end local p2    # "value":Ljava/lang/Object;
    check-cast p2, [Z

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    goto :goto_0

    .line 18
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_2
    instance-of v0, p2, Landroid/os/Bundle;

    if-eqz v0, :cond_3

    .line 19
    check-cast p2, Landroid/os/Bundle;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 20
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_3
    instance-of v0, p2, Ljava/lang/Byte;

    if-eqz v0, :cond_4

    .line 21
    check-cast p2, Ljava/lang/Byte;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    goto :goto_0

    .line 22
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_4
    instance-of v0, p2, [B

    if-eqz v0, :cond_5

    .line 23
    check-cast p2, [B

    .end local p2    # "value":Ljava/lang/Object;
    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    goto :goto_0

    .line 24
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_5
    instance-of v0, p2, Ljava/lang/Character;

    if-eqz v0, :cond_6

    .line 25
    check-cast p2, Ljava/lang/Character;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putChar(Ljava/lang/String;C)V

    goto :goto_0

    .line 26
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_6
    instance-of v0, p2, [C

    if-eqz v0, :cond_7

    .line 27
    check-cast p2, [C

    .end local p2    # "value":Ljava/lang/Object;
    check-cast p2, [C

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putCharArray(Ljava/lang/String;[C)V

    goto :goto_0

    .line 28
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_7
    instance-of v0, p2, Ljava/lang/CharSequence;

    if-eqz v0, :cond_8

    .line 29
    check-cast p2, Ljava/lang/CharSequence;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 30
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_8
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_9

    .line 31
    check-cast p2, Ljava/lang/Double;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_0

    .line 32
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_9
    instance-of v0, p2, [D

    if-eqz v0, :cond_a

    .line 33
    check-cast p2, [D

    .end local p2    # "value":Ljava/lang/Object;
    check-cast p2, [D

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    goto :goto_0

    .line 34
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_a
    instance-of v0, p2, Ljava/lang/Float;

    if-eqz v0, :cond_b

    .line 35
    check-cast p2, Ljava/lang/Float;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto/16 :goto_0

    .line 36
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_b
    instance-of v0, p2, [F

    if-eqz v0, :cond_c

    .line 37
    check-cast p2, [F

    .end local p2    # "value":Ljava/lang/Object;
    check-cast p2, [F

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    goto/16 :goto_0

    .line 38
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_c
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_d

    .line 39
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 40
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_d
    instance-of v0, p2, [I

    if-eqz v0, :cond_e

    .line 41
    check-cast p2, [I

    .end local p2    # "value":Ljava/lang/Object;
    check-cast p2, [I

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    goto/16 :goto_0

    .line 42
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_e
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_f

    .line 43
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 44
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_f
    instance-of v0, p2, [J

    if-eqz v0, :cond_10

    .line 45
    check-cast p2, [J

    .end local p2    # "value":Ljava/lang/Object;
    check-cast p2, [J

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    goto/16 :goto_0

    .line 46
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_10
    instance-of v0, p2, Ljava/lang/Short;

    if-eqz v0, :cond_11

    .line 47
    check-cast p2, Ljava/lang/Short;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    goto/16 :goto_0

    .line 48
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_11
    instance-of v0, p2, [S

    if-eqz v0, :cond_12

    .line 49
    check-cast p2, [S

    .end local p2    # "value":Ljava/lang/Object;
    check-cast p2, [S

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putShortArray(Ljava/lang/String;[S)V

    goto/16 :goto_0

    .line 50
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_12
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_13

    .line 51
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 52
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_13
    instance-of v0, p2, [Ljava/lang/String;

    if-eqz v0, :cond_14

    .line 53
    check-cast p2, [Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    check-cast p2, [Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 54
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_14
    instance-of v0, p2, Landroid/util/SparseArray;

    if-eqz v0, :cond_15

    .line 55
    check-cast p2, Landroid/util/SparseArray;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    goto/16 :goto_0

    .line 56
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_15
    instance-of v0, p2, Landroid/os/Parcelable;

    if-eqz v0, :cond_16

    .line 57
    check-cast p2, Landroid/os/Parcelable;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto/16 :goto_0

    .line 58
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_16
    instance-of v0, p2, [Landroid/os/Parcelable;

    if-eqz v0, :cond_17

    .line 59
    check-cast p2, [Landroid/os/Parcelable;

    .end local p2    # "value":Ljava/lang/Object;
    check-cast p2, [Landroid/os/Parcelable;

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    goto/16 :goto_0

    .line 60
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_17
    instance-of v0, p2, Ljava/io/Serializable;

    if-eqz v0, :cond_18

    .line 81
    check-cast p2, Ljava/io/Serializable;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    goto/16 :goto_0

    .line 83
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value type ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] is not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
