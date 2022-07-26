# print 설정
```python  
pandas.set_option('display.max_rows', None)  
pandas.set_option('display.max_columns', None)  
pandas.set_option('display.expand_frame_repr', False)
```

# type assign
```python
ret = df[1].assign(volume=df[1].volume.astype(int))
```
