.class public Lv2/com/playhaven/resources/data/PHBadgeImageResource;
.super Lv2/com/playhaven/resources/types/PHNinePatchResource;
.source "PHBadgeImageResource.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 13
    invoke-direct {p0}, Lv2/com/playhaven/resources/types/PHNinePatchResource;-><init>()V

    .line 15
    const-string v1, "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"

    .line 16
    .local v1, standardRes:Ljava/lang/String;
    const/16 v2, 0xa0

    invoke-super {p0, v2, v1}, Lv2/com/playhaven/resources/types/PHNinePatchResource;->setDataStr(ILjava/lang/String;)V

    .line 19
    const-string v0, "iVBORw0KGgoAAAANSUhEUgAAACwAAAA1CAYAAAA6XQlSAAAAVG5wVGMAAgIJAAAAAAAAAAAAAAAVAAAAFAAAABMAAAAfAAAAAAAAABUAAAAYAAAAEwAAABYAAAABAAAAAQAAAAEAAAABAAAAAQAAAAEAAAABAAAAAQAAAAGPtwuyAAAOb0lEQVRo3u2ZWYxcVXqAv3PurX3rrl7c3djNYHdjbLwMJgN4BIwBMREjEmaY2CPmJSOkiCgLEjxFcZCLUYSEUEQQvPgFFAUYyZMXjydecCC2GSDC8QLYDbSx3TZ2L67u6uqu5date889eahT7XLT3oLnjV/6paq7nPOd//7buVdwHaK1FoAQQgQAuV/9KvqDjRvvisVid6dSqTXJZHJNNBrtjUajbUKIkK9816k6Zc/zRkql0iczMzOfKqUOPfLIIx8ByowpAS2E0NfCYF8r7LZt2ywhhAL01q1bM8uXL38yk8lsTCQSy5csWZKNRqML3RYx2gHcWa6UGRsdmzp8+PCx6enpN48fP/7vQgi3Cd40xLeWbdu2WQBbt24N7d69e9PRo0cPT0xM6BbxjSqtdaAvlcAcb57XWmt9/vx5fejQoXf37NnzyPx5vpXkcjlpBuv/+OOP/2NsbGw+qNJaa3ciryuff6krJ77StbNf69q589o5c1ZXhr/SlS+GdX2q0LynCa+VUvr0yIj+4IMP/vWtt95qb53vciKu5rNCCP37Pb//YU9Hz9Y1a9asCoVCAAEgtOeJyvHPCaoOarqIl59E2DYyGgEp0Uqhay46CAj1LEIm4tjtbSRuXwGgjcpyuczx48f3TUxM/PVjjz32ZS6Xk7lcLrgu4G3btlmbNm1Su3bteqi3t/etVatWLbIsSwFSay1qJ09TPf45uuqglcJKxMG2DUYAWoMQICUCCDyPoOogLIlMZ0isuZ3IkpvmwF3XlZ999tkXExMTGx999NFjl/NpcSXYHTt23LZ48eLfrV27dtAEnBW4LrMf/A/102cQsRjCshDGmlcWgbAkOgjQvk9QdYivXUVy3VqEbWsg8H3fOnz48Efnz5//6eOPP35hIWh7IZ/dtGmTeumllxI9PT2vrF69eg7WnypQ3P8H/NFxrHQK7Xnoev068qIxkRCIkE3l4GH8yUnS964XVjpt2batVq5cuV4p9erGjRt/KYRQTbdc0MKtJ/ft2/fcunXrfp1KpQJAqkqVwu/+k/roOFYqeQ0WvboIS6JKFWLLbqH9Jz9GhMMaEPl8nmPHjm1+8MEHX5gPfImFn3/+eQHo3bt339XV0/VsKpVqLoTpPf9FbfgkVlsGVa5wo0RYFpVPjyHSKdof/JEAVFdXl5XNZv/2N7/5zdtCiJFW6FZg0YzMTCaz+dalg22mGlmz739I+cOPsTvaUaXylUNXX8e55nlpMfvOf2Nn20l9f40FBAMDA32FQuFp4Nl9+/ZZgA8gW3xXAOzdu3d1NptdbzfSl/Cni8y8ux9sC1WuoKrVOQ0cp6HVFnXm6QLnWsdQlSpBrUbgecy+tx9VqQDoRCJBZ2fnY2+88cZtDzzwgG9K+EXgLVu2CIBwOPzz7u7urmaOLL63D29sHF2vXwo5f+I5debpN6+Zv6gGpMY59gWlQ0cALCDo7etb2t7efq+JKdnqEsJkAuLx+F1tbW0ASlWrdvmTY/izJWzLQgdBI8K5caIbQQJC4E8XKR/5hPQP/gQZi+qObJZ0On0X8Ob+/fvrWmtht2aH7du3L0+lUsvMWLJ06CiVDz5GpOLo6UZUCylBykt9UF+tZramNdEAbB5SCpRqFBbPpbhtO+1/+jCJ224VAkin0+uefPLJvlwud2rlypWW3WLuwLKsgUQi0QQW1dFRyu/tIHLvw1h2CBmNIEIhsC2EMPCihfhK8Ppi1OlAQxCYIuIR1NyGe9TruP/7PvVKmQQIhCCVSt3e39/fB5weGhpqAG/YsEEDhEKhmxd1d1vN7FArFqgBXLiApUEmEshIBBkJI0KhuSqHlAghrmhZjQatG26lVKPaeRdhVaVCQIAL1EbOwJ3rhMlY0Xg8PgAcGhkZ0U0fDgAikcgiaTU6PO3UqJ/5GiUE3kwBv+ZjRaOISBQrGkGEG9DSthG2BcJASzG/g5oD1YFG+37Dqm6dwHUbWnMJ6nV0WKKEwPniBLpeR4TD2JZFIpG4GUiMjo46tok4DSCljDf9S9fr+MUZAkC5Lsw4BNUaIhzCt21kOISwQwgDLGxjbdF0k0thCQK08tFew7La9wncOtr10L5CE0Aq2pivVEKroJGiG08wA8Tr9bpvN/uHXC4XaK0v1lspEeFQg19rNHWU5yG8OgJBYNnGl0XDwrbVyCBStjhxE7bFZ5WCumr8JkDjmesVBOG56td0Ma01tWo1BMSUUg0Lb9myReRyOarV6oy5UMtUEntxXyNMQhaaOgLLTAIoD6GsFjiBoAErjFvoQF8MNNSCv403GiMJtIbQkpsawQ34SpHP510g6vt+uJklBEC5XB6fmZ2lvb3dAoh0dTcCX0oDc3ECfclkzdRgt4BemvcakHN2XyCRiMZTAuKrVoDVmK/mOExMTMwCYd/3I9JkiQBgamrqbD6fn2zOEkulCaPRNecbnaigddPQxPCM+i3a+H/xWn2ZlC3RnkcETSSVNgNqRs6cmfn000/rQGxqasqWLSaSr7322sj09PTZpinb7lxHdMNDBKUiJJOX6V5uUL1LJFCVIqnHf0Fs0aIGQBBw+vTp/KFDh1Rvb2+0WCw2gIUQOpfLhY8dOzY6MzNzSpleN3LzEtrW/9A0oqK19bjBEkAiAkD2kR8T6lkEoGuuy7lz5yYBL9mWDBUKhbkaK0ZGRgDk0NDQR2fPnlWmAdG9P/8ZIa3RxSkQ0T+ClQNIthPkx0msvIOu+++f85Ghz4eCAwcOFABRmalc2q1NTExoIPrMM8/84dy5cydNPtbpdXfQm/vnRjOajV8a1TdEQmBJNHDT039D/NYB02L4DB0fmnrnnXcKfX19luGbA9a7du3S9913nwQK+/fv3zE2Pt44L6D/r56kfcPDqMIFRLar+ZbpBohCdHfgz07R/cu/5KZNfzEX0ydPnmLPnj1TgKMa4gNBq1MGhUJBAeK5557bf/DgwSHP8wCCSF8vy//lRWK04U/nER3dV9hCXHNTiejuxcuPkV57F4Mv/BqrLQNAqVRix44dM2+//fZYJpNRxWKxbnYcfuurIZHP5+2VK1cm8vm8KJVK3sDAwD1LliwJobWO9PWK+I/WU/y3N3CdKrKjC5QEVbuOYNQNl4pnIJ3Cn5ogtWwVt//2LeIDy0xFhXfffVc9++yzXzuOMxGLxSYqlcoYcAEoWpckQrDz+XxoxYoVqQ8//LCeTqeTg4ODt7ZnswKtdfyW74n2P/sp1c9PUv3yMwhcRFcPVLUxwJV6SwmRJGTbCWYnUU6Frp/9gpVvvk5icAAdBAgpOXjwIJs3by4MDw9f6OrqyhcKhVHLska11nlgxvpG9oaQ4zjRrq6uxN69eytLly7tXbp0aXcimRSAjvT2iI6HNiDSWWoHPqFezaNFHZnthHAUrBBIo+FIQ+MJSMRQlQJBtUxs2Qr6/3EzA//0D0T6ekFrhJQMDw/z8ssvV3fs2DHZ2dk5NTk5OQac11qPApPArDWveAnA8jwvFA6HY47jxHbv3l3NZrMdPT092Y6ODgFoO5MRHRvup+0nDyH7FhOcn6I+ehq/5qD9Glq56KCOVi6BX0PVqkinSuqe++j9+79jIPcc3X/+KDIeb27QOHz4MK+88or3+uuvz2YymelSqTQRBMEocA4YA6aBkljgfXEUaAN6stns0kKhMADc+sQTT9zz9NNPD65bd4cMhyOX9LvV4RNUJycpHTpCbegL6udH8cfzhPpvItzdTfSONaS/v4Z4RyfRZbdcMmG1WuXAgQO88MIL3vvvv19Jp9NTruuOuq57Sko5HATBl8AIMA4UxQIuEQaSkUikw3XdxclkciCZTA6Oj48vvfvuu1c89dRT39uwYUO0v78fy5rnUb5COU6j11UKaVtIy0YmEt9o7D3PY2RkhJ07d+oXX3zRHxsbc7LZ7GypVJrwPO+slPKrIAhOACeNlaeAsrVgvgGhlJKhUMiq1Wp2rVYLd3Z2RoaHh9m+fbsaGxsLhUKhSCwWE/F4HCmE2W1IZCSMjEWx4nFkNIqIhOca+kApaq7LqVOn2Lt3L6+++mrw8ssv++Vy2W1vby9PT09PBUEwLqX8OgiCrw3oBFAEKoAnFmybIAQkgHagF+gHlmWz2Vvq9Xp/uVxeBHRt3LgxtXr16vDg4KC9evVquru7sS2LUCiEZVn4vo/v+3i+z9jYGEePHuXEiRMcOXJE79y5UwF+KpVygXKpVCqYx34WOGX0rDk2DVQvByxMHxEGUkC2BfqWaDTaH4/HF8/Oznb5vt8GJIHY+vXr7f7+fjuVSonOzk6RSqUoFosUpgvMFGc4c+aMPnjwYLOJ9pPJpGdZlus4Trler0+bPHsOOGN8tgk7ZaxbB9TltrrSBGBkHvRiA744Fov1xuPxTillWz6fTwAxs0jLqJznajoajapkMqk8z6s7juPU6/Wyedx5kwnOGdBzBrYAlAC3mejty7dQ+MbalZaU16wQruM4VcdxykBnPB7PRCKRhBAiZnYGdhAElmVZQkqphRBaKaVc1/UnJyfrQA0oAzMmv04Aoy06YdxgzrLN+LKvUkd9M3jrQjxzrGJWX6xWq+3VajUDJCzLikopQ0IIW2stlVIEQRCYSd2We2eNBfMGsKmTZiFlc71qbRHtqxf+OWhtbvZaLFQ0E2SBDJBSSsWVUlEzttUyjmcAKi33FoyPTprf02YhVWNZf34/a19bt4LXAuy3TDxrJswAaROACVN8QgYYc1+9xbplc+9Mi5bMuZqZr2lZfc2fvRYIxGbKCxuouNFEM1uY4xFznZznSi7gGAtWDWDF/K7Ns+r1ffa6wnc9aSxnG6jIPA23ZAs5L4g9A9X0Zdf8nw+q/18fFq8BXLaksZBZRFNlS3YJWqAXUn010G8LPL/DEy2Ach5s6wuMYJ4V9fVuEm/ky/T54132LfEf8QXHd/KdfCc3Wv4Ph+kLf2adts4AAAAASUVORK5CYII="

    .line 20
    .local v0, highRes:Ljava/lang/String;
    const/16 v2, 0xf0

    invoke-super {p0, v2, v0}, Lv2/com/playhaven/resources/types/PHNinePatchResource;->setDataStr(ILjava/lang/String;)V

    .line 21
    return-void
.end method
