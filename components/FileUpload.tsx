
import React, { useState, useCallback, useRef } from 'react';
import { UploadIcon } from './icons/UploadIcon';

interface FileUploadProps {
  onFileSelect: (file: File) => void;
}

export const FileUpload: React.FC<FileUploadProps> = ({ onFileSelect }) => {
  const [isDragging, setIsDragging] = useState(false);
  const [fileName, setFileName] = useState('');
  const fileInputRef = useRef<HTMLInputElement>(null);

  const handleDrag = useCallback((e: React.DragEvent<HTMLDivElement>) => {
    e.preventDefault();
    e.stopPropagation();
    if (e.type === "dragenter" || e.type === "dragover") {
      setIsDragging(true);
    } else if (e.type === "dragleave") {
      setIsDragging(false);
    }
  }, []);

  const handleDrop = useCallback((e: React.DragEvent<HTMLDivElement>) => {
    e.preventDefault();
    e.stopPropagation();
    setIsDragging(false);
    if (e.dataTransfer.files && e.dataTransfer.files[0]) {
      handleFile(e.dataTransfer.files[0]);
    }
  }, [onFileSelect]);
  
  const handleChange = (e: React.ChangeEvent<HTMLInputElement>) => {
    if (e.target.files && e.target.files[0]) {
      handleFile(e.target.files[0]);
    }
  };

  const handleFile = (file: File) => {
    if (file && file.type === 'text/xml') {
        setFileName(file.name);
        onFileSelect(file);
    } else {
        alert("Please upload a valid XML file.");
    }
  }

  const handleClick = () => {
    fileInputRef.current?.click();
  }

  return (
    <div
      className={`relative p-6 border-2 border-dashed rounded-lg cursor-pointer transition-all duration-300 ease-in-out ${
        isDragging ? 'border-brand-primary bg-brand-primary/10' : 'border-dark-border hover:border-brand-secondary'
      }`}
      onDragEnter={handleDrag}
      onDragOver={handleDrag}
      onDragLeave={handleDrag}
      onDrop={handleDrop}
      onClick={handleClick}
    >
      <input
        ref={fileInputRef}
        type="file"
        accept=".xml"
        className="hidden"
        onChange={handleChange}
      />
      <div className="flex flex-col items-center justify-center text-center">
        <UploadIcon className="w-12 h-12 mb-4 text-dark-text-secondary" />
        <p className="font-semibold text-gray-300">
            <span className="text-brand-primary">Click to upload</span> or drag and drop
        </p>
        <p className="text-xs text-dark-text-secondary mt-1">XML files only</p>
        {fileName && (
            <div className="mt-4 bg-green-900/50 text-green-300 text-sm px-3 py-1.5 rounded-md w-full truncate">
                {fileName}
            </div>
        )}
      </div>
    </div>
  );
};
